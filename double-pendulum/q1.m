clear all; close all; clc;

%% question(a)
InitialAngle = 1.38;
r = 2 ;%length of 2 rods
theta =-( pi/2 - InitialAngle );%
x = r*cos(theta);
y = r*sin(theta);
swinger(x,y)

%% question(b)
swinger (0.862,-0.994)

%% question(c)
swinger (2,0)
%swinger (1,-1)

%% question(d)
swinger(2,0)

%% question(e)
swinger(1,0)

%% question(f)
swingernew(1,0)

%% draft
clear all; close all; clc;
h = plot([2; 3],[ 5; 4],'o-');