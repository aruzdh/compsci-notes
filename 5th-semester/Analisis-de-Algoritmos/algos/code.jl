function fastpow(a, n::Int)
  if n == 0 return 1 end
  if n == 1 return a end
  if n % 2 == 1 return a * fastpow(a, n - 1) end

  m = n ÷ 2
  x = fastpow(a, m)
  return x * x
end

f(n) = (fastpow([BigInt(3) 2 ; 1 0], n) * [2 ; 1])[2]
# f(n) = ([BigInt(3) 2 ; 1 0]^n * [2 ; 1])[2]

# println(f(1_000_000_000))
f(1_000_000_000)
