require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_string = []
    split_string << self.split(/[?.!]/)
    no_empties = []
    split_string.each do |x|
      if x != "" && x != " "
        no_empties << x
      end
    end
    counted_string = no_empties.count
  end
end
