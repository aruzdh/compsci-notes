def f(list):
    if len(list) == 0:
        return []
    max_elem = max(list)
    list.remove(max_elem)
    return f(list) + [max_elem]


print(f([18, 1, 8, 4, 0, 7, 5]))
