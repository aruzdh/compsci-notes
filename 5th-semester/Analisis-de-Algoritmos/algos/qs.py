def particiona(A, b, e):
    p = A[e - 1]
    k = b
    for i in range(b, e - 1):
        if A[i] < p:
            A[i], A[k] = A[k], A[i]
            k += 1
    return k


def qsort(A, b, e):
    m = e - b
    if m < 2:
        return
    k = particiona(A, b, e)
    A[k], A[e - 1] = A[e - 1], A[k]
    qsort(A, b, k)
    qsort(A, k + 1, e)


A = [5, 4, 1, 2, 3, 6, 839, 72, 81, 6, 8, 4, 10]
# A = [5, 4, 4, 3, 2, 1]
# A = [4, 4]
print(A)
# print(particiona(A, 0, len(A)))
qsort(A, 0, len(A))
print(A)
