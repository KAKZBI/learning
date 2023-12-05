# def golomb(n)
#     return 1 if n == 1
#     return 1 + golomb(n - golomb(golomb(n - 1)));
# end

def golomb(n, memo = {})
    return 1 if n == 1
    memo[n] = golomb(n - golomb(golomb(n - 1))) if !memo[n]
    return 1 + memo[n];
end

p golomb(10)