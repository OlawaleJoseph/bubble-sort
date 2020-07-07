def bubble_sort(arr)
  swap = true
  arr_length = arr.length - 1
  while swap
    swap = false
    arr_length.times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
    arr_length -= 1
  end
  arr
end

puts bubble_sort([2, 7, 25, 1, 9, 5])

def bubble_sort_by(arr)
  swap = true
  arr_length = arr.length - 1
  while swap
    swap = false
    arr_length.times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
    arr_length -= 1
  end
  arr
end

puts bubble_sort_by(%w[hi hello hey]) { |left, right|
  left.length - right.length
}
