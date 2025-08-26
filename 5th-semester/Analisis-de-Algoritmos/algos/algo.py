# def f(n):
#     if n == 0:
#         return 1
#     if n == 1:
#         return 2
#     return 3 * f(n - 1) + 2 * f(n - 2)


# def f(n):
#     a = 1
#     b = 2
#     k = 0
#     while k < n:
#         k += 1
#         a, b = b, 3 * b + 2 * a
#     return a

m = []


def fastpow(a, n):
    if n == 1:
        return a
    if n % 2 == 1:
        return a * fastpow(a, n - 1)
    else:
        m = n // 2
        x = fastpow(a, m)
        return x * x


f(1000000)
