module Algorithm
  class Binary
    def search(row_data, target)
      low = 0
      high = row_data.length - 1
      while low <= high
        mid = (low + high)/2
        if row_data[mid] == target
          return mid + 1
        end
        if target <row_data[mid]
          high = mid - 1
        else
          low = mid + 1
        end
      end
      return -1
    end
  end
end
