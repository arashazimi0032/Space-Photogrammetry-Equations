function power3D = three_D_power(terms)

power3D = zeros(length(terms),4);
if length(terms) == 10
    n = 2;
elseif length(terms) == 20
    n = 3;
end

p = 0;
for i = 0:n
    for j = 0:n-i
        for k=0:n-i-j
            p = p+1;
            power3D(p,:) = [i , j , k , 0];
        end
    end
end
power3D(:,4) = sum(power3D,2);
power3D = sortrows(power3D,4);
power3D(:,4) = [];
power3D = [power3D(:,3),power3D(:,2) , power3D(:,1)];
power3D = power3D.*[terms,terms,terms];

end