%% 2D wave propagation Simulation using KWave

%% Create the Computational Grid

Nx = 128;           % number of grid points in the x (row) direction
Ny = 128;           % number of grid points in the y (column) direction
dx = 0.1e-3;        % grid point spacing in the x direction [m]
dy = 0.1e-3;        % grid point spacing in the y direction [m]
kgrid = makeGrid(Nx, dx, Ny, dy);

%% Define the properties of the propagation medium

medium.sound_speed = 1500;  % [m/s]
medium.alpha_coeff = 0.75;  % [dB/(MHz^y cm)]
medium.alpha_power = 1.5; 

%% Create initial pressure distribution using makeDisc

disc_magnitude = 5; % [Pa]
disc_x_pos = 50;    % [grid points]
disc_y_pos = 50;    % [grid points]
disc_radius = 8;    % [grid points]
disc_1 = disc_magnitude*makeDisc(Nx, Ny, disc_x_pos, disc_y_pos, disc_radius);

disc_magnitude = 3; % [Pa]
disc_x_pos = 80;    % [grid points]
disc_y_pos = 60;    % [grid points]
disc_radius = 5;    % [grid points]
disc_2 = disc_magnitude*makeDisc(Nx, Ny, disc_x_pos, disc_y_pos, disc_radius);

source.p0 = disc_1 + disc_2;

%% Define a centered circular sensor

sensor_radius = 4e-3;   % [m]
num_sensor_points = 50;
sensor.mask = makeCartCircle(sensor_radius, num_sensor_points);

%% Run the simulation

sensor_data = kspaceFirstOrder2D(kgrid, medium, source, sensor);

%% Visualisation

%% Plot the initial pressure and sensor distribution

figure;
imagesc(kgrid.y_vec*1e3, kgrid.x_vec*1e3, source.p0 + cart2grid(kgrid, sensor.mask), [-1 1]);
colormap(getColorMap);
ylabel('x-position [mm]');
xlabel('y-position [mm]');
axis image;

%% Plot the simulated sensor data

figure;
imagesc(sensor_data, [-1, 1]);
colormap(getColorMap);
ylabel('Sensor Position');
xlabel('Time Step');
colorbar;

%% End of Program