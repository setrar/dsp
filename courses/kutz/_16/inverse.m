width=50;
Fs=zeros(600,800);
mask=ones(2*width+1,2*width+1);
Fs(301-width:1:301+width,401-width:1:401+width)=mask;
Btsf=Bts.*Fs;
Bf=ifft2(Btf);