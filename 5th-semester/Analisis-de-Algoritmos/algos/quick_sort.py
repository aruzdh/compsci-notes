# def qsort(A):
#     if len(A) < 2:
#         return A
#     ptr = A[-1]
#     left = qsort([x for x in A[:-1] if x <= ptr])
#     right = qsort([x for x in A[:-1] if x > ptr])
#     return left + [ptr] + right


def qsort(A):
    return handle(A, 0, len(A))


def handle(A, b, e):
    if e - b < 2:
        return
    ptr = e - 1
    curr = 0
    nxt = curr

    while curr < ptr and nxt < ptr:
        A[curr], A[nxt] = A[nxt], A[curr]
        nxt += 1

        if A[curr] <= A[ptr]:
            curr += 1
        else:
            # if nxt == ptr:
            #     break
            A[curr], A[nxt] = A[nxt], A[curr]
            nxt += 1
    print(curr, nxt + 1)
    handle(A, 0, curr + 1)
    handle(A, curr + 1, e)


# array = [8, 7, 6, 510, 8, 6, 5, 4, 7, 6, 5, 54]
# array = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
array = [3, 1, 2]

print(array)
qsort(array)
print(array)
