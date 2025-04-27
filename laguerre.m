function [x] = laguerre(P,z0, M, epsilon)
    z = z0;
    n = length(P) - 1;
    for k = 1:M
        
        Pz = P(1);
        Pp1_z = 0;
        Pp2_z = 0;
        for i = 2:length(P)
            Pp2_z = Pp2_z * z + 2 * Pp1_z;
            Pp1_z = Pp1_z * z + Pz;
            Pz = Pz * z + P(i);
        end

        if abs(Pz) < epsilon
            x = z;
            return;
        end
        A = -Pp1_z / Pz;
        B = A^2 - Pp2_z / Pz;
        sqrt_z = sqrt((n - 1) * (n * B - A^2));
        
        if abs(n^(-1)*(A + sqrt_z)) > abs(n^(-1)*(A - sqrt_z))
            C = n^(-1)*(A + sqrt_z);
        else
            C = n^(-1)*(A - sqrt_z);
        end
       
        z_nowe = z + 1 / C;
        if abs(z_nowe - z) < epsilon
            z = z_nowe;
            break;
        end
        x=z_nowe;
        disp(['Przyblizenie w iteracji  ', num2str(k), ...
            ': ', num2str(x)]);
        z = z_nowe;
    end
    x = z;
end
