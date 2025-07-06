# Implement translator to Satrovacki slang. In order to generate `satro` representation of the word
# translator should split the word on the first vowel, and then reverse the order of split parts. If
# word is (strictly) less than 3 characters long, skip the conversion to `shatro`.
#
# Examples
#   +---------------+---------------+---------------+---------------+
#   |  first vowel  |      split    |    reverse    |     shatro    |
#   +---------------+---------------+---------------+---------------+
#   |     zdravo    |     zdra vo   |     vo zdra   |     vozdra    |
#   |        ^      |               |               |               |
#   +---------------+---------------+---------------+---------------+
#   |    betonske   |   be tonske   |   tonske be   |    tonskebe   |
#   |     ^         |               |               |               |
#   +---------------+---------------+---------------+---------------+
#
# Method will be called with a string which contains series of words separated by a space
# character(eg. "krpa krpa sava sava") and it should return a string where each word is converted to
# Satrovacki slang.

def shatro(sentence)
  # split the sentence into words
  words = sentence.split(' ')
  
  # map each word to its ŠATRO representation
  words.map do |w|
    # if the word is less than 3 chars long return it immediately
    next w if w.length < 3

    # find the index of the first vowel in the word
    first_vowel_index = w.index(/[aeiouy]/i)

    # if no vowel, return the word
    next w if first_vowel_index.nil?

    # split the word into 2 parts (split AFTER the first vowel)
    first_part = w[0..first_vowel_index] 
    second_part = w[first_vowel_index + 1..-1] 

    # reverse the order of the parts
    "#{second_part}#{first_part}"
  end.join(' ')
end
