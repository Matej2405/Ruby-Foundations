# Implement a function that counts the number of holes(enclosed spaces) in a number. Use the
# following table as a reference for the number of holes of a specific digit. For example the input
# number 100 should return a result of 2
#
# Digit | Holes
# ------+------
#   0   |   1
#   1   |   0
#   2   |   0
#   3   |   0
#   4   |   1
#   5   |   0
#   6   |   1
#   7   |   0
#   8   |   2
#   9   |   1

def holes(number)
  # converting the number to a string for easy iteration
  number.to_s.chars.reduce(0) do |count, digit|
    # count the holes based on the digit
    count + case digit
            when '0', '4', '6', '9' then 1
            when '1' '2', '3', '5', '7' then 0
            when '8' then 2
            else 0 
            end
  end
end
