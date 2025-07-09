# Run-length-encoding is a simple form of data compression:
#   if an element (e) occurs (n) consecutive times in input stream replace the consecutive
#   occurrences with a single pair (ne)
#
# Examples:
#   a    -> 1a
#   aa   -> 2a
#   aabb -> 2a2b  'aa4b' = ['a','a','4','b']
#   aab  -> 2a1b
#   aaab -> 3a1b
#   ab   -> 1a1b
#   aaaabbbcc -> 4a3b2c 
#   aabbcc -> 2a2b2c
#   abc  -> 1a1b1c
#   aabbccdd -> 2a2b2c2d
#   abcd -> 1a1b1c1d
#   abc  -> 1a1b1c

def compress(input_stream)
  # chekc if the stream is empty
  return '' if input_stream.empty?
  # first convert the string into a array of chars
  # second use the chunk method to group the same characters together
  # third map the grouped characters to a string with the format "number + character"
  # fourth join the array of strings into a single string
  input_stream.chars.chunk(&:itself).map do |char, occurunces|
      "#{occurunces.size}#{char}"
  end.join('')
end
