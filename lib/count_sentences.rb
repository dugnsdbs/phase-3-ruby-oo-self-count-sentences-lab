require 'pry'

class String
  attr_accessor :sentence, :question, :exclamation, :count

  def sentence?(word)
    self.sentence = word.end_with?(".")
  end

  def question? (que)
    self.question = que.end_with?("?")
  end

  def exclamation? (exc)
    self.exclamation = exc.end_with?("!")
  end

  def count_sentences (words)
    self.count = words.split(" ").count
  end
end

word4=String.new
word4.count_sentences("This is a string! It has three sentences. Right?")
word4.exclamation?("This is a string! It has three sentences. Right?")
puts word4.exclamation
puts word4.count


word3=String.new
word3.exclamation?("asdklfjhaskldfhjkdas?")
puts word3.exclamation


word1=String.new
word1.sentence?("asdfasdf")
puts word1.sentence

word2=String.new
word2.question?("asdfasdf?")
puts word2.question