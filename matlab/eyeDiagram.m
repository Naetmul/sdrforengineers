
fs = 1000;
sps = 4;
% Create transmit filter and eye diagram objects.
txfilter = comm.RaisedCosineTransmitFilter('OutputSamplesPerSymbol',sps,'RolloffFactor',0.6);
% Generate random symbols and apply QPSK modulation. Then filter the
% modulated signal and display the eye diagram.
data = randi([0 1],1000,1);
modSig = pskmod(data,2,pi/2);
txSig = txfilter(modSig);
h = eyediagram(imag(txSig(sps*5+1:end)), 8);
title(findobj(h.Children, "-depth", 0, "Type", "axes"), '');
grid on;