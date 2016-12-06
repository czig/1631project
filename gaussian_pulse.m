ts = 0.005;
fs = 1/ts;

t = 0:ts:20;

y = 0.8*gauspuls(t-10,fs,0.005) - 0.8*gauspuls(t-13,fs,0.005);
y(abs(y)<(1e-4)) = 0  %set small values zero
plot(t,y)
gauss_out = [t;y];

save('gauss_pulse.mat','gauss_out', '-v7.3');