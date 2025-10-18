function window = my_tukeywin(L,r)
x = linspace(0,1,L);
low_index = x<(r/2);
high_index = x>(1-r/2);
window = ones(1, L);
window(low_index) = 1/2*(1+cos(2*pi/r*(x(low_index)-r/2)));
window(high_index) = 1/2*(1+cos(2*pi/r*(x(high_index)-1+r/2)));
window = window(:);
end