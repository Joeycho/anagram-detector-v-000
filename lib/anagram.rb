require 'pry'
# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(otherword)
  #  binding.pry
    candidate = otherword
    candidate.map do
      |x|
      if x.length != self.word.length
      #  binding.pry
        candidate.delete(x)
      elsif x.split("").sort == self.word.split("").sort
        x
      else
      end
    end
  end
end
