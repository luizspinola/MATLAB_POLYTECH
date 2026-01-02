%Fin TD3 polyfit, polyval, interpl
clc;clear; close all;

data = load("census.mat");
cdate = data.cdate;
pop = data.pop;

data = cat(2,cdate,pop);

donne2 = data(12:20,:);

donne3 = data(12:2:20,:);

donne4 = cat(1,data(12:4:16,:),data(18,:));

figure();
plot(data(:,1), data(:,2)) %hyperbole
figure();
plot(donne2(:,1), donne2(:,2)) %droite
figure();
plot(donne3(:,1), donne3(:,2)) %droite
figure();
plot(donne4(:,1), donne4(:,2)) %droite

data = polyfit(data(:,1), data(:,2), 2);

donne2 = polyfit(donne2(:,1), donne2(:,2), 1);

donne3 = polyfit(donne3(:,1), donne3(:,2), 1);

donne4 = polyfit(donne4(:,1), donne4(:,2), 1);

data = polyval(data,linspace(1970,2050));
donne2 = polyval(donne2,linspace(1970,2050));
donne3 = polyval(donne3,linspace(1970,2050));
donne4 = polyval(donne4,linspace(1970,2050));

figure();
hold on;
plot(linspace(1970, 2050), data, 'r-', 'DisplayName', 'Quadratic Fit');
plot(linspace(1970, 2050), donne2, 'g-', 'DisplayName', 'Linear Fit 1');
plot(linspace(1970, 2050), donne3, 'b-', 'DisplayName', 'Linear Fit 2');
plot(linspace(1970, 2050), donne4, 'm-', 'DisplayName', 'Linear Fit 3');
hold off;
xlabel('Year');
ylabel('Population');
title('Population Projections');
legend show;



