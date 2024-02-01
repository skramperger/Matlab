%% Komplexer Zeiger in Matlab

f=1;
t=0:1/100:2;
cv = exp(1j*2*pi*f*t) % complex values

x = real(cv);
y = imag(cv);
z = zeros(size(cv));
plot3(x,y,t)
xlabel("real")
ylabel("imag")
zlabel("time")
grid on

hold on
for k=1:length(t)
    plot3(x(k),y(k),t(k), "bo")
    plot3(x(k),0,t(k), "bo")
    pause(0.03)
end
