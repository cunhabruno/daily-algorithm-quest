import unittest
from algorithms.duplicates import contains_duplicates, contains_duplicates_improved

class TestContainsDuplicates(unittest.TestCase):
    
    def test_with_duplicates(self):
        self.assertTrue(contains_duplicates([1, 2, 3, 4, 1]))
        self.assertTrue(contains_duplicates_improved([1, 2, 3, 4, 1])) 
    
    def test_without_duplicates(self):
        self.assertFalse(contains_duplicates([1, 2, 3, 4, 5]))
        self.assertFalse(contains_duplicates_improved([1, 2, 3, 4, 5]))
    
    def test_empty_list(self):
        self.assertFalse(contains_duplicates([]))
        self.assertFalse(contains_duplicates_improved([]))
    
    def test_single_element_list(self):
        self.assertFalse(contains_duplicates([42]))
        self.assertFalse(contains_duplicates_improved([42]))
    
    def test_all_same_elements(self):
        self.assertTrue(contains_duplicates([7, 7, 7, 7, 7]))
        self.assertTrue(contains_duplicates_improved([7, 7, 7, 7, 7]))
    
    def test_large_list(self):
        nums = list(range(100000)) + [99999]
        self.assertTrue(contains_duplicates(nums))
        self.assertTrue(contains_duplicates_improved(nums))

    def test_negative_numbers(self):
        self.assertTrue(contains_duplicates([-1, -2, -3, -1]))
        self.assertTrue(contains_duplicates_improved([-1, -2, -3, -1]))

    def test_mixed_types_int_duplicate(self):
        self.assertTrue(contains_duplicates([1, "a", "b", 1]))
        self.assertTrue(contains_duplicates_improved([1, "a", "b", 1]))

    def test_mixed_types_string_duplicate(self):
        self.assertTrue(contains_duplicates([2, "a", "a", 1]))
        self.assertTrue(contains_duplicates_improved([2, "a", "a", 1]))

if __name__ == "__main__":
    unittest.main()
