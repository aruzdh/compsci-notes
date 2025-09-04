def pivotea(A, b, e):
    p = A[e - 1]
    k = b
    for i in range(b, e - 1):
        if A[i] < p:
            A[i], A[k] = A[k], A[i]
            k += 1
    A[k], A[e - 1] = A[e - 1], A[k]
    return k


def qsortIter(A):
    tasks = []
    tasks.append((0, len(A)))
    while tasks:  # len(tasks) != 0
        (b, e) = tasks.pop()
        if e - b >= 2:
            k = pivotea(A, b, e)
            tasks.append((b, k))
            tasks.append((k + 1, e))


A = [5, 4, 1, 2, 3, 6, 839, 72, 81, 6, 8, 4, 10]
# A = [5, 4, 4, 3, 2, 1]
# A = [4, 4]
print(A)
# print(particiona(A, 0, len(A)))
qsortIter(A)
print(A)
