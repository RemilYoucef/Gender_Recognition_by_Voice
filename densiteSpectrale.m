function [S] = densiteSpectrale(y,fe)

N=length(y);
if mod(N,2)~=0
y=y(1:end-1);
N=length(y);
end
Yfft=fft(y);
S=Yfft.*Yfft;
m=(0:(N-1)/2);
f=(m)/N*fe; % trac� du spectre d'amplitude entre [0;fe/2]
subplot(2,2,1);
plot(fftshift(abs(Yfft)))
xlabel('fr�quence'),title('Spectre d''amplitude avec information dupliqu�e')

subplot(2,2,3);
plot(f,fftshift(abs(Yfft(1:N/2))))
xlabel('fr�quence'),title('Spectred''amplitude')

subplot(2,2,2);
plot(fftshift(abs(S)))
xlabel('fr�quence'),title('Densit� sp�ctrale avec information dupliqu�e')

subplot(2,2,4);
plot(f,fftshift(abs(S(1:N/2))))
xlabel('fr�quence'),title('Densit� sp�ctrale')
end

