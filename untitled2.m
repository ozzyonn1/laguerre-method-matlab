% Współczynniki wielomianu piątego stopnia: P(x) = 2x^8−15x^7+40x^6−75x^5+120x^4−165x^3+200x^2−225x+250
S = [2 -15 40 -75 120 -165 200 -225 250];
z = laguerre(S, 0, 10, 1e-6);
disp('Pierwiastek wielomianu:');
disp(z);

% Znajdowanie pierwiastków wielomianu
roots_S = roots(S);

% Wyświetlanie pierwiastków
disp('Pierwiastki wielomianu za pomocą funkcji roots:');
disp(roots_S);


% Wykres wielomianu
x = linspace(min(real(roots_S))-1, max(real(roots_S))+1, 1000);  % Zakres x obejmujący pierwiastki
y = polyval(S, x);          

figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;

% Pierwiastki znalezione za pomocą funkcji roots
plot(real(roots_S), imag(roots_S), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

xlabel('Część rzeczywista');
ylabel('Część urojona');
title('Wykres wielomianu P(x)=2x^8−15x^7+40x^6−75x^5+120x^4−165x^3+200x^2−225x+250 oraz jego pierwiastki na płaszczyźnie zespolonej');

legend('Wielomian', 'Pierwiastki', 'Location', 'best');

grid on;
hold off;