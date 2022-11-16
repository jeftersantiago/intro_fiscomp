#== Tarefa 1 ==#

f(x) = cosh(3x)sin(x/2)
df(x) = 3sin(x/2)sinh(3x) + (1/2)cos(x/2)cosh(3x)
df2(x) = 3sinh(3x)cos(x/2) + (35/4)cosh(3x)sin(x/2)
df3(x) = (1/8) * (198sinh(3x)sin(x/2) + 107cosh(3x)cos(x/2)) 

dfh_right(x, h) = (f(x + h) - f(x))/h
dfh_left(x, h) = (f(x) - f(x - h))/h
dfh_symmetric3(x, h) =  (f(x+h) - f(x-h))/ (2h)

dfh_symmetric5(x, h) = (f(x - 2h) - 8f(x-h) + 8f(x+h) - f(x+2h))/12h

df2h_antism5(x, h) = (-f(x - 2h) + 16f(x - h) - 30f(x) + 16f(x + h) - f(x + 2h))/(12h^2)
df3h_antism5(x, h) = (-f(x - 2h) + 2f(x - h) - 2f(x + h) + f(x + 2h)) / (2h^3)

#== Tarefa 2 ==#
f2(x) = ℯ^(x^2 / 2) sin(π * x)


