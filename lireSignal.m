
function [y,fs] = lireSignal(fichierAudio)

[y,fs] = audioread(fichierAudio); %y etant le signal retourn� 
                                  %et fs la fr�quence maximale
subplot(1,1,1);
plot(y)
xlabel('Frequence')
ylabel('Audio Signal')

end

