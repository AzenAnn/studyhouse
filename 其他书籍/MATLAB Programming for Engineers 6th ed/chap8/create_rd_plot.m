load rd_space;
figure(1);
surf(range,velocity,amp);
xlabel('\bfRange (m)');
ylabel('\bfVelocity (m/s)'); 
zlabel('\bfAmplitude (dBm)');
title('\bfProcessed radar data containing targets and noise');
