module Algorithm
  class Bubble
    def sort(row_data)
      (row_data.size-2).downto(0) do |i|
        (0..i).each do |j|
          row_data[j], row_data[j+1] = row_data[j+1], row_data[j] if row_data[j] > row_data[j+1]
          p row_data
        end
      end
      return row_data
    end
  end
end