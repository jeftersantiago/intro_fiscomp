# ⟨x²⟩
function x2(N, p)
    q = 1 - p
    return 4 * N * p * q + N^2 - 4 * N^2 * p * q
end

# ⟨x⟩
function x(N, p)
    return N * (2 * p - 1) 
end


