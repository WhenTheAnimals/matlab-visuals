%*********************************************************************
%Make Your Own S.T.E.A.M.
%Jay Strickland
%20190517
%
%This MATLAB script plots the 2d x*y maximums for an area of 75 sq.ft., 
%as well as the largest square possible given that area. It's
%purpose is to provide an illustration for a how to article. You can read
%the full article at makeyourownsteam.com
%
%********************************************************************

%matlab good habit, clean everything before getting started
clc;clear;close;


%Strategy: 
%   1) define params for all maxima (any x*y = 75 combo)
%   2) define params for the square
%   3) define params for a point at the intersection of the three lines
%   4) plot all params AND set plot/figure styles

%   1) define params for all maxima (should be a line that intersects both
%   axis at 75)

X1 = 0:30;
Y1 = 75./(X1);

%   2) define params for thesquare

%going to be using this number a lot
maxsquare = sqrt(75);

X2 = [0, maxsquare, maxsquare];
Y2 = [maxsquare, maxsquare 0];

%   3) define params for a point at the intersection of the three lines

X3 = maxsquare;
Y3 = maxsquare;

%   4) plot all params AND set plot/figure styles



%name figure
figure('Name','Largest Square');
grid on;
axis([0 25 0 25]);

%squelch extra figures, we just want to do things to the one
hold on;

%-b = blue line, --g = green dashed line, r. = red dot
plot(X1,Y1,'-b',X2,Y2,'--g',X3,Y3,'r.','MarkerSize',12);
legend('x*y=75','max square','max (x,y)');

%label maximum, use x+0.5 offset to make it look pretty
text(X3,Y3+1,'\downarrow (8.6603, 8.6603)');

%add labels for plot
title('Largest square with an area of 75 sq.ft.')
xlabel('Length (Linear Feet)')
ylabel('Width (Linear Feet)')
