function x = check_digit(m,n)
k = round(max(m,n));
if mod(k,2)==0
x = k+1;
else
x = k;
end
end