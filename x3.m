%  x^3 - 4x^2 + 5x - 2
P = [1 -4 5 -2];
z = laguerre(P, 5, 100, 1e-6);
disp('Pierwiastek wielomianu:');
disp(z);

x = linspace(-2, 4, 1000);  
y = polyval(P, x);          

figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(z, 0, 'go', 'MarkerSize', 15, 'MarkerFaceColor', 'g');

roots_P = roots(P);
plot(roots_P, zeros(size(roots_P)), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
plot([min(x), max(x)], [0, 0], 'k-');  % Oś x

xlabel('x');
ylabel('y');
title('Wykres wielomianu P(x) = x^3 - 4x^2 + 5x-2');

legend('Wielomian', 'Pierwiastek Laguerre','Pierwiastki','Oś X', 'Location', 'best');
grid on;
hold off;   

