% Simulates model for 60 minutes
P4_track;
P4init;
simout = sim("Project_4_Simulation","StopTime","3600");
carX = simout.X.Data;
carY = simout.Y.Data;
tout = simout.tout;

% Race Statistics
race = raceStat(carX, carY, tout, Path, simout);
disp(race)

