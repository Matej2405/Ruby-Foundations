# Implement a function which calculates the winner of an election. Each person's vote is represented
# as a single candidate name. The candidate with the highest number of votes wins the election. In
# case of a tie, when multiple candidates have the same number of votes, they should be sorted
# alphabetically in descending order where last name wins. If Albert and Zach both get 5 votes then
# the winner is Zach.
#
# Eg.
# if votes are ['Paula', 'Zach', 'Albert', 'Zach', 'Paula', 'Albert', 'Albert', 'Zach']
# winner is 'Zach'

def election_winner(votes);
  # count the votes for each candidate
  vote_count = Hash.new(0)
  votes.each do |vote|
    vote_count[vote] += 1
  end

  # find the max of votes
  max_votes = vote_count.values.max

  # find the candidate with the max votes
  winners = vote_count.select { |candidate, count| count == max_votes}

  # sort the winners in descending order
  sorted_winners = winners.keys.sort.reverse

  # return the first candidate in the sorted list
  sorted_winners.first
  
end
