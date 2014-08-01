module Algorithm
  class Quick
    def sort(row_data)
      (x=row_data.pop) ? sort(row_data.select{|i| i <= x}) + [x] + sort(row_data.select{|i| i > x}) : []
    end
  end
end