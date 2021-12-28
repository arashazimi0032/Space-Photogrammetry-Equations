function pt = lagrange_poly(pti,tj,t_center)
pt = 0;
for i =1:length(pti)
    p = pti(i);
    m = 1;
    for j = 1:length(pti)
        if j == i
            continue;
        end
        m = m * (t_center-tj(j))/(tj(i) - tj(j));
    end
    pt = pt + p*m;
end

end