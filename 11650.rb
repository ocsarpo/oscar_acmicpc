# 5
# 0 -100000
# 1 -100000
# -100 -100000
# 100 1
# 0 1
def partition(arr, left, right, sort_by)
	first = left
	pivot = arr[first]

	left += 1
	while (left <= right)
		while(arr[left][sort_by] <= pivot[sort_by] && left < right)
			left += 1
		end
		while(arr[right][sort_by] > pivot[sort_by] && left <= right)
			right -= 1
		end

		if (left < right)
			tmp = arr[left]
			arr[left] = arr[right]
			arr[right] = tmp
		else
			break
		end
	end

	tmp = arr[first]
	arr[first] = arr[right]
	arr[right] = tmp

	return right
end

def quick_sort(arr, left, right, sort_by)
	if left < right
		idx = partition(arr, left, right, sort_by)

		quick_sort(arr, left, idx - 1, sort_by)
		quick_sort(arr, idx + 1, right, sort_by)
	end
end

input = gets.chomp().to_i
targets = []
input.times do
	targets << gets.chomp().split(' ')
end

length = targets.length
pp '----------'
quick_sort(targets, 0, length-1, 0)
targets.map{|t| puts t[0] + ' ' + t[1]}