% Code for manuscript "Parameter inference in a computational model of 
% hemodynamics in pulmonary hypertension" by Colebank, Colunga, et al.
% This driver file will call each patient's optimized parameters and plot
% the model predictions compared to the static and dynamics data.

% set graphic preference
set(0,'DefaultFigureWindowStyle','default')
set(groot, 'defaultAxesTickLabelInterpreter','latex');
set(groot, 'defaultLegendInterpreter','latex');
set(0,'DefaultTextInterpreter','latex')
set(0,'defaultAxesFontSize',11)

%

%% Call CV model and plot optimial prediction
clear; clc;
PATIENT = 5;  %% Change for each patient (1-5), or use 6 for normotensive
RESIDUAL = 2; %% Change for each residual (1-2)
[p,V,q] = Driver_postopt(PATIENT,RESIDUAL); % Returns pressure, volume, flow