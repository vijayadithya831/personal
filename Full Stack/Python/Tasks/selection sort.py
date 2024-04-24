def swap(arr, i, j):
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp

def locOfSmallest(arr, s, e):
    i = s
    j = i
    while i<=e:
        if arr[i] < arr[j]:
            j = i
        i+=1
    return j

def selSort(arr, n):
    i = 0
    while i < n-1:
        j = locOfSmallest(arr, i, n-1)
        swap(arr, i, j)
        i+=1

arr = [102,12,193,1932,192, 11,293,39,239]
size = len(arr)
print(arr)
selSort(arr, size)
print(arr)