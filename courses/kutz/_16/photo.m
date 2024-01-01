A=imread('photo.jpeg');
Abw=rgb2gray(A);
Abw=double(Abw);
B=Abw+100*randn(600,800);
Bt=fft2(B); Bts=fftshift(Bt);
subplot(2,2,1), imshow(uint8(B)), colormap(hot)
subplot(2,2,2), pcolor(log(abs(Bts)))