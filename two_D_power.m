function pow2D = two_D_power(terms)

pow2D = zeros(length(terms),3);
ch = 0;
for i = 0:4
    for j = 0:4-i
        ch = ch+1;
        pow2D(ch,:) = [i , j , 0];
    end
end
pow2D(:,3) = sum(pow2D,2);
pow2D = sortrows(pow2D,3);
pow2D(:,3) = [];
pow2D = [pow2D(:,2),pow2D(:,1)];
pow2D = pow2D.*[terms,terms];

end