% Współczynniki wielomianu piątego stopnia: P(x)=2x^8−15x^7+40x^6−75x^5+120x^4−165x^3+200x^2−225x+250
S = [2 -15 40 -75 120 -165 200 -225 250];
z = laguerre(S, 0, 10, 1e-6);
disp('Pierwiastek wielomianu');
disp(z);

roots_S = roots(S);

x = linspace(-5, 5, 1000);  
y = polyval(S, x);          

figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;

plot(real(z), imag(z), 'go', 'MarkerSize', 15, 'MarkerFaceColor', 'g');

plot(real(roots_S), imag(roots_S), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
plot([min(x), max(x)], [0, 0], 'k-');  % Oś x

xlabel('x');
ylabel('y');
title('Wykres wielomianu P(x)=2x^8−15x^7+40x^6−75x^5+120x^4−165x^3+200x^2−225x+250');

legend('Wielomian', 'Pierwiastek Laguerre', 'Pierwiatki', 'Oś X', 'Location', 'best');

grid on;
hold off;
roots_S = roots(S);
disp('Pierwiastki wielomianu za pomocą funkcji roots:');
disp(roots_S);
