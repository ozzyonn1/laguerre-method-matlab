
P = [1 -6 11 -6 1];        
z = laguerre(P, 10, 10, 1e-6);
disp('Pierwiastek wielomianu:');
disp(z);


roots_P = roots(P);

x = linspace(-1, 4, 1000);  
y = polyval(P, x);          
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(z, 0, 'go', 'MarkerSize', 15, 'MarkerFaceColor', 'g');

plot(roots_P, zeros(size(roots_P)), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
plot([min(x), max(x)], [0, 0], 'k-');  % Oś x

xlabel('x');
ylabel('y');
title('Wykres wielomianu czwartego stopnia');

legend('Wielomian', 'Pierwiastek Laguerre','Pierwiastki','Oś X',  'Location', 'best');
grid on;
hold off;

