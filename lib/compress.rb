# Run-length-encoding is a simple form of data compression:
#   if an element (e) occurs (n) consecutive times in input stream replace the consecutive
#   occurrences with a single pair (ne)
#
# Examples:
#   a    -> 1a
#   aa   -> 2a
#   aabb -> 2a2b
#   abc  -> 1a1b1c

def compress(input_stream)
  #check if the stream is empty
  return '' if input_stream.empty?

  result = []
  current_char = input_stream[0]
  count = 1
  # iterate through the input stream(three dots mean that the we are not considering the last element)
  (1...input_stream.length).each do |i|
    if input_stream[i] == current_char
      count += 1
    else
      result << "#{count}#{current_char}"
      current_char = input_stream[i]
      count = 1
    end
  end

  result << "#{count}#{current_char}"
  result.join
  
end
