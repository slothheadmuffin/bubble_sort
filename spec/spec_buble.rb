
require 'spec_helper'
require '../bubble_sort/bubble_sort'

RSpec.describe 'Bubble Sort' do
  describe 'Returns same if they are already organized' do
    bubble=[1,2,3,4,5,6,7]
    it 'returns same array' do
      expect(bubble_sorter(bubble)).to eq ([1,2,3,4,5,6,7])
    end
  end

  describe 'does nothing if they are the same value' do
    bubble=[1,1,1,1,1,1,1]
    it 'returns same array do' do
      expect(bubble_sorter(bubble)).to eq ([1,1,1,1,1,1,1])
    end
  end

  describe 'handles empty array' do
    bubble=[]
    it 'returns empty' do
      expect(bubble_sorter(bubble)).to eq ([])
    end
  end

  describe 'sorts array' do
    bubble=[4,3,78,2,0,2]
    it 'returns sorted array' do
      expect(bubble_sorter(bubble)).to eq ([0,2,2,3,4,78])
    end
  end

  describe 'handles negative numbers' do
    bubble = [3, -1, 4, -1, -5, 9, 2, 6, 5]
    it 'returns sorted array with negatives' do
      expect(bubble_sorter(bubble)).to eq ([-5, -1, -1, 2, 3, 4, 5, 6, 9])
    end
  end
  describe 'handles single element array' do
    bubble = [42]
    it 'returns same single element array' do
      expect(bubble_sorter(bubble)).to eq ([42])
    end
  end
  
  describe 'sorts array sorted in descending order' do
    bubble = [9, 7, 5, 3, 1]
    it 'returns sorted array' do
      expect(bubble_sorter(bubble)).to eq ([1, 3, 5, 7, 9])
    end
  end
end