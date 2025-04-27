
P = [1 -3 2];
z = laguerre(P, -1, 100, 1e-6);
disp('Pierwiastek wielomianu:');
disp(z);


x = linspace(0, 3, 500);
y = polyval(P, x);

figure;
plot(x, y, 'LineWidth', 2);
hold on;
plot(z, 0, 'go', 'MarkerSize', 15, 'MarkerFaceColor', 'g');

roots_P = roots(P);

plot(roots_P, zeros(size(roots_P)), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

plot([min(x), max(x)], [0, 0], 'k-');  % Oś x

grid on;

title('Wykres wielomianu P(x) = x^2 - 3x + 2');
xlabel('x');
ylabel('y');

legend('P(x)', 'Pierwiastek Laguerre','Pierwiastki','Oś X', 'Location', 'Best');

hold off;




