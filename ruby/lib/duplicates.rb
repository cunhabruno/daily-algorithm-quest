# frozen_string_literal: true

class Duplicates
  def contains_duplicate(nums)
    seen_numbers = Set.new

    nums.each do |num|
      return true if seen_numbers.include?(num)

      seen_numbers.add(num)
    end

    false
  end
end
