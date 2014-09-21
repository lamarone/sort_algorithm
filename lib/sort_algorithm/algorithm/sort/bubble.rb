module Algorithm
  class Bubble < Algo
    def sort(row_data)
      print "bubble sort:\n"
      sorting_data = row_data
      (0..sorting_data.length - 2).each do |i|
        (0..sorting_data.length - 1 - i - 1).each do |j|
          sorting_data[j] , sorting_data[j+1] = sorting_data[j+1] , sorting_data[j] if sorting_data[j] > sorting_data[j+1]
        end
      end
      sorted_data = sorting_data
    end
  end
end