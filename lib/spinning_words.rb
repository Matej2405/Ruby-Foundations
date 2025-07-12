# Write a function that takes a sentence and returns that sentence but with
# all five or more letter words reversed.
#
# Sounds a bit like shatro right? :D
#
# Examples:
#  "This homework is taking too long" => "This krowemoh is gnikat too long"
#  "One change here" => "One egnahc here"

def spinning_words(sentence) 
  #split the sentence into wordsa
  words = sentence.split()
  # map each word to its reversed version if the word has more than 5 letters
  words.map do |word|
    word.length >= 5 ? word.reverse : word
  end.join(' ')
  end
