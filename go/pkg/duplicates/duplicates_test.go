package duplicates

import (
	"testing"
)

func TestContainsDuplicate(t *testing.T) {
	tests := []struct {
		input    []int
		expected bool
		name     string
	}{
		{
			name:     "With duplicates",
			input:    []int{1, 2, 3, 1},
			expected: true,
		},
		{
			name:     "No duplicates",
			input:    []int{1, 2, 3, 4},
			expected: false,
		},
		{
			name:     "Empty slice",
			input:    []int{},
			expected: false,
		},
		{
			name:     "Single element",
			input:    []int{1},
			expected: false,
		},
		{
			name:     "Multiple duplicates",
			input:    []int{1, 1, 1, 3, 3, 4, 3, 2, 4, 2},
			expected: true,
		},
	}

	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			result := ContainsDuplicate(test.input)
			if result != test.expected {
				t.Errorf("Test %s failed: expected %v but got %v",
					test.name, test.expected, result)
			}
		})
	}
}
