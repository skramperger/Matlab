%% Amplitudenmodulation
% Erzeugen eines amplitudenmodulierten Signals
% Signals
% Autor: Stefan Kramperger
% Datum: 16.01.2024


%% Deklarationen
Ac=0.5; % Carrieramplitude (Trägeramplitude)
Ai=0.5; % Informationsamplitude

fi=440; % Informationsfrequenz
Fc=5e3; % Carrierfrequenz (Trägerfrequenz)
phi=0;  % 
PHI=0;
tmax=3; % Maximale Laufzeit in Sekunden
fs=48e3;% Abtastfrequenz

%% Berechnungen 

t=0:1/fs:tmax;
ui=Ai*cos(2*pi*fi*t+phi);
uc=Ai*cos(2*pi*Fc*t+PHI);
np=round(fs/fi);

uAM=(Ac+ui).*cos(2*pi*Fc*t);

%% Darstellung

subplot(4,1,1)
plot(t(1:5*np),ui(1:5*np))
grid on

subplot(4,1,2)
plot(t(1:5*np),uc(1:5*np))
grid on

subplot(4,1,3)
plot(t(1:5*np),ui(1:5*np))
hold on
subplot(4,1,3)
plot(t(1:5*np),uc(1:5*np))
grid on

subplot(4,1,4)
plot(t(1:5*np),uAM(1:5*np))
grid on

sound(uAM,fs)
