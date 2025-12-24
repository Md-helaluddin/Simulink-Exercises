%% Suspension Model Parameters
m1 = 2500;
m2 = 320;
k1 = 80000;
k2 = 500000;
b1 = 350;
b2 = 15020;

%% PID Controller Gains (The "Knowledge")
% These values determine how aggressively the car corrects itself
Kp = 835000;  % Proportional: Reacts to current bounce
Ki = 1200000; % Integral: Corrects long-term sag
Kd = 210000;  % Derivative: Acts like an electronic shock absorber

%% Open Simulink
model_name = 'Suspension_PID';
if ~bdIsLoaded(model_name)
    open_system(model_name);
end