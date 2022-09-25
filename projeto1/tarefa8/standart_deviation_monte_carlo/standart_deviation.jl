using Statistics
using CSV
using DataFrames

X1 = CSV.read(string("output-1.dat"), DataFrame);
X2 = CSV.read(string("output-2.dat"), DataFrame);
X3 = CSV.read(string("output-3.dat"), DataFrame);
X4 = CSV.read(string("output-4.dat"), DataFrame);
X5 = CSV.read(string("output-5.dat"), DataFrame);
X6 = CSV.read(string("output-6.dat"), DataFrame);
X7 = CSV.read(string("output-7.dat"), DataFrame);

function standartDeviation(X)
    x_mean = Statistics.mean(X);
    n = length(X);
    sum = 0;
    for i = 1:n
        sum += (X[i] - x_mean)^2;
    end
    sum = sqrt(sum/ (n - 1));
    println(x_mean, " pm ", sum);
end
