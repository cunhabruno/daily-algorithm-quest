package duplicates

func ContainsDuplicate(nums []int) bool {
	// Using struct{} reduces the memory footprint since it doesn't store any value.
	seen := make(map[int]struct{}, len(nums))

	for _, num := range nums {
		if _, exists := seen[num]; exists {
			return true
		}
		seen[num] = struct{}{}
	}

	return false
}
