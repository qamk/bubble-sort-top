require 'pry'

def sorted?(list)

  list.each_with_index do |item, index|
    next_index = index + 1 
    next_item = list[next_index] or next

    if item > next_item
      return false
    end
  end
  return true

end

def bubble_sort(list)
  sorted = false
  until sorted
    list.each_with_index do |item,current_index|
      next_index = current_index + 1 
      next_item = list[next_index] or next
      
      if item > next_item
        list[current_index] = next_item
        list[next_index] = item
      end
    
    end
    
    sorted = sorted?(list)
   
  end
  print "#{list}\n"
  return list
end
puts "Enter a list of numbers, separated by spaces, to be sorted and press enter."
print "To use the default list ([4,3,78,2,0,2,73,24,19]) press enter wihout typing.\n"

unsorted_list = gets.chomp.split(" ")
unsorted_list = (unsorted_list.empty?) ? [4,3,78,2,0,2,73,24,19] : (unsorted_list.map {|item| item.to_i})

sorted_list = bubble_sort(unsorted_list)
