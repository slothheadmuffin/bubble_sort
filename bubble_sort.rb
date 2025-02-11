
def bubble_sorter(array)
  n=array.length
  swaps=1
  while swaps>0
      swaps=0
      (n-1).times do |i|
          if array[i]>array[i+1] 
              array[i],array[i+1]=array[i+1],array[i]
              swaps+=1
          end
      end
  end
  p array
end
