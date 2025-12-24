%% Suspension Model Parameters 
% Physical constants for the Quarter-Car Model

m1 = 2500;
m2 = 320;
k1 = 80000;
k2 = 500000;
b1 = 350;
b2 = 15020;


model_name = 'Suspension';

% Check if the file is already open; if not, open it
if ~bdIsLoaded(model_name)
    open_system(model_name);
end

% Set Simulation Stop Time to 50 seconds
set_param(model_name, 'StopTime', '50');

disp('Updated parameters loaded. Press Play in Simulink to see the response.');