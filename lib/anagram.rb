# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(otherword)
    candidate = otherword.split(/\s/)
    candidate.map do
      |x|
      if x.length != self.word.length
        candidate.delete(x)
      elsif x.split("").sort == self.word.split("").sort
        yield x
      else
      end
    end
  end
end
