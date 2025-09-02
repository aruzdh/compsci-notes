def merge(A, B):
    res = []
    a_ptr, b_ptr = 0, 0
    while a_ptr < len(A) and b_ptr < len(B):
        if A[a_ptr] <= B[b_ptr]:
            res.append(A[a_ptr])
            a_ptr += 1
        else:
            res.append(B[b_ptr])
            b_ptr += 1

    while a_ptr < len(A):
        res.append(A[a_ptr])
        a_ptr += 1

    while b_ptr < len(B):
        res.append(B[b_ptr])
        b_ptr += 1
    return res


def msort(A):
    if len(A) <= 1:
        return A
    n = len(A) // 2
    left = msort(A[:n])
    right = msort(A[n:])
    return merge(left, right)


# array = [8, 7, 6, 510, 8, 6, 5, 4, 7, 6, 5, 54]
array = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]

print(array)
print(msort(array))
