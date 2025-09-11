A = [2.3, 3.5, 6.5, 8, 7.3, 6.2, 4]
A = [2.3, 13.5, 6.5, 4, 3.3, 2.2, 0.4]
A = [2.3, 3.5, 6.5, 4, 3.3, 2.2, 0.4]


# Lineal
# def cima(A):
#     p = A[-1]
#
#     for curr in range(len(A) - 1):
#         if A[curr] > A[curr + 1]:
#             return A[curr]
#     return p
#
#
# print(cima(A))


def cima(A):
    if len(A) == 1:
        return A[0]
    n = len(A) // 2
    max_left = cima(A[0:n])
    max_right = cima(A[n : len(A)])
    return max(max_left, max_right)


print(cima(A))
