# frozen_string_literal: true

require './lib/duplicates'

RSpec.describe Duplicates do
  subject(:duplicates) { described_class.new }

  describe '#contains_duplicate' do
    context 'when there are no duplicates' do
      it 'returns false for an array with unique numbers' do
        expect(duplicates.contains_duplicate([1, 2, 3, 4])).to be false
        expect(duplicates.contains_duplicate_buildin([1, 2, 3, 4])).to be false
      end

      it 'returns false for an empty array' do
        expect(duplicates.contains_duplicate([])).to be false
        expect(duplicates.contains_duplicate_buildin([])).to be false
      end

      it 'returns false for an array with one element' do
        expect(duplicates.contains_duplicate([1])).to be false
        expect(duplicates.contains_duplicate_buildin([1])).to be false
      end
    end

    context 'when there are duplicates' do
      it 'returns true for an array with one duplicate' do
        expect(duplicates.contains_duplicate([1, 2, 3, 3])).to be true
        expect(duplicates.contains_duplicate_buildin([1, 2, 3, 3])).to be true
      end

      it 'returns true for an array with multiple duplicates' do
        expect(duplicates.contains_duplicate([1, 1, 2, 2])).to be true
        expect(duplicates.contains_duplicate_buildin([1, 1, 2, 2])).to be true
      end

      it 'returns true when duplicates are not adjacent' do
        expect(duplicates.contains_duplicate([1, 2, 1, 3])).to be true
        expect(duplicates.contains_duplicate_buildin([1, 2, 1, 3])).to be true
      end
    end

    context 'with edge cases' do
      it 'handles negative numbers' do
        expect(duplicates.contains_duplicate([-1, -1, 2, 3])).to be true
        expect(duplicates.contains_duplicate([-1, -2, -3])).to be false

        expect(duplicates.contains_duplicate_buildin([-1, -1, 2, 3])).to be true
        expect(duplicates.contains_duplicate_buildin([-1, -2, -3])).to be false
      end

      it 'handles zero' do
        expect(duplicates.contains_duplicate([0, 0, 1])).to be true
        expect(duplicates.contains_duplicate([0, 1, 2])).to be false

        expect(duplicates.contains_duplicate_buildin([0, 0, 1])).to be true
        expect(duplicates.contains_duplicate_buildin([0, 1, 2])).to be false
      end
    end
  end
end
