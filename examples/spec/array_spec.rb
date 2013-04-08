# write code and specs to make the tests pass

describe Array do
  describe '#first' do
    it 'returns the first element of the array'

    it 'returns nil if the array is empty'
  end

  describe '#map' do
    it 'returns an array'

    it 'returns an empty array if the original array is empty'

    it 'replaces each element with the value returned by block'
  end

  describe '#all?' do
    it 'returns true when all elements match the condition in the block'

    it 'returns false when not all elements match the condition in the block'
  end

  describe '#any?' do
    it 'returns false when no element matches the condition in the block'
    it 'returns true when at least 1 element matches the condition in the block'
  end

  describe '#each' do
    it 'returns the original array'
  end

  describe '#clear' do
    it 'empties the array'
  end

  describe '#count' do
    it 'returns the element count of the array'
  end

  describe '#detect' do
    it 'returns the first element that matches the condition in the block'

    it 'returns nil if no element matches the condition in the block'
  end

  describe '#select' do
    it 'returns an array'

    it 'returns an empty array if no element matches the condition in the block'

    it 'returns an array with all the elements that match the condition in the block'
  end
end