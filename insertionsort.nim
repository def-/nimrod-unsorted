proc insertionSort[T](a: var openarray[T]) =
  for i in 1 ..< a.len:
    let value = a[i]
    var j = i
    while j > 0 and value < a[j-1]:
      a[j] = a[j-1]
      dec j
    a[j] = value

var a = @[4, 65, 2, -31, 0, 99, 2, 83, 782]
insertionSort a
echo a
