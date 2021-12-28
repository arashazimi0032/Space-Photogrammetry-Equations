function dp = diff_power(power,coeffs,var)

power = [power,coeffs];
dp = zeros(size(power));

if ~strcmpi(var,'x') && ~strcmpi(var,'y') && ~strcmpi(var,'z')
    msgbox('please select variable X or Y or Z to Differentiate!!','Error','error')
    error('please select variable X or Y or Z to Differentiate.')
elseif strcmpi(var,'x')
    dp(:,4) = power(:,1).*power(:,4);
    dp(power(:,1) ~= 0,1) = power(power(:,1) ~= 0,1) - 1;
    dp(:,2:3) = power(:,2:3);
elseif strcmpi(var,'y')
    dp(:,4) = power(:,2).*power(:,4);
    dp(power(:,2) ~= 0,2) = power(power(:,2) ~= 0,2) - 1;
    dp(:,1) = power(:,1);
    dp(:,3) = power(:,3);
elseif strcmpi(var,'z')
    dp(:,4) = power(:,3).*power(:,4);
    dp(power(:,3) ~= 0,3) = power(power(:,3) ~= 0,3) - 1;
    dp(:,1:2) = power(:,1:2);
end

end