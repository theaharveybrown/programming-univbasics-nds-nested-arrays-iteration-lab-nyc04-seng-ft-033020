def join_ingredients(src)
  ingredients = []
  row_index = 0
  while row_index < src.count do
    inner = src[row_index]
    ingredients << "I love #{inner[0]} and #{inner[1]} on my pizza"
    row_index += 1
  end
  ingredients
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays

  row_index = 0
  result = []
  while row_index < src.count do
    if src[row_index][0] > src[row_index][1]
      result << src[row_index][0]
    else
      result << src[row_index][1]
    end
    row_index += 1
  end
  result
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  row_index = 0
  while row_index < src.count do
    if src[row_index][0] % 2 == 0 && src[row_index][1] % 2 == 0
      sum = src[row_index][0] + src[row_index][1]
      total += sum
    end
  end
  total
end
