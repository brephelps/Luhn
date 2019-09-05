module Luhn
  def self.is_valid?(number)

    # create sum variable
    @sum = 0
    # split number into integer filled array and reverse order
    array = number.to_s.split('').map { |s| s.to_i }
    array.reverse!

    # move through each item in array
    # if index is not divisible by 2, double int
    # if doubled int >= 10, subtract 9
    array.each_with_index.map do |x, i|
      if i % 2 != 0 
        x *= 2
        if x >= 10
          x -= 9
        end 
      end

    # add new integer values into sum variable
      @sum += x
    end
    # if sum is divisible by 10, return true else false
    return @sum % 10 == 0
  end
end

