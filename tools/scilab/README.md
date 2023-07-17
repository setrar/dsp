

```scilab
t = [0:0.1:5];
u = t.*((t>=0)&(t<=2))-2*(t-3).*((t >2)&(t <=3));
a=gca();
a.thickness =2;
a.y_location = "middle";
xtitle=('the signal x(t)');
plot(t,u);
plot2d3('gnn',t,u);
```

<img src=images/scilab-1.png width='50%' height='50%' > </img>


- [ ] plot delta sequence

```scilab
n = 0:10;
delta_sequence = zeros(1,11);
delta_sequence(6) = 1;
plot2d3('gnn',n,delta_sequence)
```

<img src=images/scilab-delta-sequence.png width='50%' height='50%' > </img>


```scilab
function [z, t, f] = spectrogram(x, N, M, Fs, w, grph, cmap)
    // Spectrogram of a signal
    //
    // Usage
    //       [z, t, f] = spectrogram(x, N, Fs, M, w, grph)
    // where
    //       x:    signal vector
    //       N:    FFT window length. Default: 1024
    //       M:    offset between FFT windows in samples
    //             Default: 512 
    //       Fs:   sample rate in Hz. Default: 44100
    //       w:    windowing function; accepted values are
    //             "boxcar", "hann", "hamming", "blackman", 
    //             "bharris", "flattop" and a custom vector
    //             containing N components of the window.
    //             Default: "hann"
    //       grph: graphic output; accepted values are
    //             "lin", "lincmap", "log", "logcmap",
    //             lin/log refers to linear or logarithmic
    //             distribution of magnitude along the
    //             colormap and cmap to the inclusion or 
    //             not of a colormap. The default is no
    //             graph.
    //       cmap: a string indicating any of the accepted
    //             color maps (such as "jetcolormap") or 
    //             any matrix with 3 columns containing the
    //             RGB description of the colors. Default:
    //             "jetcolormap"     
    //       z:    matrix with N/2 rows and
    //             floor((length(x) - N)/M + 1) columns, 
    //             where each column contains the absolute
    //             value of the spectrum beginning at each 
    //             multiple of M
    //       t:    vector containing starting times in s of
    //             each FFT window
    //       f:    vector containing the values of the
    //             FFT frequency bins in Hz
    // 
    // -----------------------------------------------
    // Author: Federico Miyara
    // Date:   2021-07-10
    
    // Argument handling
    rhs = argn(2);
    if rhs<7
        cmap = jetcolormap(64);
    else
        if type(cmap)==10
            // Accepted color maps
            cmaps = ["autumncolormap" "bonecolormap" ...
                     "coolcolormap" "coppercolormap" ...
                     "graycolormap" "hotcolormap" ...
                     "hsvcolormap" "jetcolormap" ...
                     "oceancolormap" "parulacolormap" ...
                     "pinkcolormap" "rainbowcolormap" ...
                     "springcolormap" "summercolormap" ...
                     "whitecolormap" "wintercolormap"]
            if or(cmap==cmaps)
                // Get cmap from accepted color maps
                execstr("cmap = " + cmap + "(64)");
            else
                cmap = jetcolormap(64);
            end
        elseif type(cmap)==1
            if isreal(cmap) 
                if size(cmap)(2)==3 & max(cmap)<=1 & min(cmap)>=0
                else
                    cmap = jetcolormap(64);
                end
            else
                cmap = jetcolormap(64);;
            end
        else
            cmap = jetcolormap(64);;   
        end
    end
    if rhs<6
        grph = "log";
    end
    if rhs<5
        w = "hann";
    end
    if rhs<4
        Fs = 44100;
    end
    if rhs<3
        M = 512;
    end
    if rhs<2
        N = 1024;
    end
        
    // Data for testing purpooses --DELETE--
    if 1==2
        N = 1024
        M = 256
        Fs = 44100
        w = "hann"
        grph = "logcmap"
        cmap = "jetcolormap"
        tt = 0:1/Fs:2;
        fo = 8000
        fm = 0.5
        df = 4000
        ff = fo + df*sin(2*%pi*fm*tt);
        phi = 2*%pi*cumsum(f)/Fs;
        caso = 2
        select caso
        case 1
            // Two harmonics with aliasing
            x = 0.4*sin(phi) + 0.3*sin(2*phi);
        case 2
            // Two harmonics with aliasing
            // and distortion
            x = sin(phi) + sin(2*phi);  
            x = min(x, ones(x));          
        end
        wavwrite(x,"d:\hello\fmod.wav");
    end
    
    // Ensure the signal is a column vector
    x = x(:);

    // Number of FFT windows 
    Q = floor((length(x) - N)/M + 1);
    
    // Initialize z
    z = zeros(N/2, Q);
    
    // Generate a matrix whose columns are
    // segments with length N of the signal
    // starting at sample indices multiple 
    // of M
    y = zeros(N, Q);
    for k=1:Q
        y(:,k) = x((k-1)*M+1:(k-1)*M+N);
    end
    
    // Compute window function
    if type(w)==1
        w = w(:);
    else
        select w
        case "boxcar"
            w = 1;
        case "hann"
            w = 0.5 - 0.5*cos(2*%pi*[0:N-1]/N)';
        case "hamming"
            w = 0.54 - 0.46*cos(2*%pi*[0:N-1]/N)';
        case "blackman"
            w = 0.42 - 0.5*cos(2*%pi*[0:N-1]/N)' + ...
            0.08*cos(4*%pi*[0:N-1]/N)'; 
        case "bharris"
            w = 0.35875 - 0.48829*cos(2*%pi*[0:N-1]/N)' + ... 
            0.14128*cos(4*%pi*[0:N-1]/N)' - ...
            0.01168*cos(6*%pi*[0:N-1]/N)';
        case "flattop"
            wft = 1 - 1.90796*cos(2*%pi*[0:N-1]/N)' + ...
            1.07349*cos(4*%pi*[0:N-1]/N)' - ...
            0.18199*cos(6*%pi*[0:N-1]/N)';
        end
    end
    // Replicate window
    ww = repmat(w, 1, Q);
    
    // FFT of the windowed signal along columns
    // and conversion to unilateral spectrum
    z = abs(fft(y.*ww, -1, 1))(1:N/2,:)*2/N;
    z(1,:) = z(1,:)/2;
    
    // Window attenuation compensation
    W = sqrt(mean(w.^2));
    z(2:$,:) = z(2:$,:)/W;
    z(1,:) = z(1,:)/mean(w);

    // Starting times of the FFT windows 
    t = (0:Q-1)*M/Fs;
    
    // Frequencies of the FFT bins
    f = (0:N/2-1)*Fs/N;
    
    // Graphic output
    select grph
    case "lin"
        figure();
        clf();
        gcf().color_map= [cmap; [1 1 1]];
        gcf().background = 65;
        Sgrayplot(t, f, z');
    case "lincmap"
        figure();
        clf();
        gcf().color_map= [cmap; [1 1 1]];
        gcf().background = 65;
        Sgrayplot(t, f, z');
        colorbar   
    case "log"
        figure()
        clf();
        gcf().color_map= [cmap; [1 1 1]];
        gcf().background = 65;
        Sgrayplot(t, f, 20*log10(z'));
    case "logcmap"
        figure()
        clf();
        gcf().color_map = [cmap; [1 1 1]];
        gcf().background = 65;
        Sgrayplot(t, f, 20*log10(z'));
        colorbar   
    end
    
endfunction
```

# References

https://iocscience.org/ejournal/index.php/mantik

- [ ] [Equivalent function like MATLAB's stem(x,y) in SCILAB.](https://www.edaboard.com/threads/equivalent-function-like-matlabs-stem-x-y-in-scilab.56138)
- [ ] [Download scilab-2023.1.0](https://www.scilab.org/download/scilab-2023.1.0)
