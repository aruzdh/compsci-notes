# def qsort(A):
#     if len(A) < 2:
#         return A
#     ptr = A[-1]
#     left = qsort([x for x in A[:-1] if x <= ptr])
#     right = qsort([x for x in A[:-1] if x > ptr])
#     return left + [ptr] + right


def qsort(A):
    return handle(A, 0, len(A))


def segment(A, b, e):
    ptr = e - 1
    center = b
    for i in range(b, e - 1):
        if A[i] < A[ptr]:
            A[center], A[i] = A[i], A[center]
            center += 1
    A[center], A[ptr] = A[ptr], A[center]
    return center


def handle(A, b, e):
    if e - b < 2:
        return
    center = segment(A, b, e)
    handle(A, b, center)
    handle(A, center + 1, e)


array = [8, 7, 6, 510, 8, 6, 5, 4, 7, 6, 5, 54]

print(array)
qsort(array)
print(array)
