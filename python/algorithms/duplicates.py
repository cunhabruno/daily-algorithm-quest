def contains_duplicates(array):
    seen: set = set()
    for el in array:
        if el in seen:
            return True
        seen.add(el)
    return False

def contains_duplicates_improved(array):
    return len(array) != len(set(array))

