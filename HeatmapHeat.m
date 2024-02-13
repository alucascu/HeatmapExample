clear all
close all
syms x  y;

syms k real

a = 0;
b = 10;

T = (4 / ((2*k + 1) * pi * sinh(pi*(2*k + 1)))) * sin((2*k + 1)*pi*x) * sinh((2*k + 1)*pi*y);

tiledlayout(2, 2)               W
    nexttile
    s = symsum(T, k ,a,b);
    fsurf(s, [0 1 0 1])
    view(2)
b=100;
    nexttile
    s = symsum(T, k ,a,b);
    fsurf(s, [0 1 0 1])
    view(2)


b = 1000;
    nexttile
    s = symsum(T, k ,a,b);
    fsurf(s, [0 1 0 1])
    view(2)

