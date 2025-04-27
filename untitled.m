% Współczynniki wielomianu P(x) = x^4 + 2x^3 + 3x^2 + 4x + 5
S = [2 -15 40 -75 120 -165 200 -225 250];
z = laguerre(S, 0, 10, 1e-6);
disp('Pierwiastek wielomianu');
disp(z);
% Znalezienie pierwiastków wielomianu
roots_S = roots(S);

% Wyświetlenie pierwiastków
disp('Pierwiastki wielomianu:');
disp(roots_S);

% Wykres wielomianu na płaszczyźnie zespolonej
figure;
plot(real(roots_S), imag(roots_S), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

xlabel('Część rzeczywista');
ylabel('Część urojona');
title('Pierwiastki wielomianu na płaszczyźnie zespolonej');
grid on;
