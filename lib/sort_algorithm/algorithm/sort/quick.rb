module Algorithm
  class Quick < Algo
    def sort(row_data)
      print "quick sort:"
      left = 0
      right = row_data.length - 1
      print "\n row_data: \n",row_data,"\n"
      quick_sort(row_data,left,right)
    end

    private
    def quick_sort(row_data,left,right)
      i = left
      j = right
      val = row_data[i]
      if j - i + 1 > 1
        while i < j do
          while i < j do
            if row_data[j] < val
              row_data[i] = row_data[j]
              break
            end
            j = j - 1
          end
          while i < j do
            if row_data[i] > val
              row_data[j] = row_data[i]
              break
            end
            i = i + 1
          end
        end
        row_data[i] = val
        quick_sort(row_data,left,i)
        quick_sort(row_data,i+1,right)
      end
      row_data
    end
  end
end