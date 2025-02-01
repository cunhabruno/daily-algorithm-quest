# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

class Duplicates
  extend T::Sig

  sig { params(nums: T::Array[Integer]).returns(T::Boolean) }
  def contains_duplicate(nums)
    seen_numbers = Set.new

    nums.each do |num|
      return true if seen_numbers.include?(num)

      seen_numbers.add(num)
    end
    false
  end

  sig { params(nums: T::Array[Integer]).returns(T::Boolean) }
  def contains_duplicate_buildin(nums)
    nums.length != nums.uniq.length
  end
end
