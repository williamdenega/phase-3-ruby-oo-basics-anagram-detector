# Your code goes here!
require 'pry'
class Anagram

    attr_reader :word

    def initialize word
        @word = word
    end

    def match list
        list.select {|str| anagram?(str)  } 
    end

    private

    def anagram? str
        word.chars.sort == str.chars.sort 
    end

end

class Anagram_v2

    attr_reader :arry, :word

    def initialize word
        @word = word
        @arry = word.chars.sort
    end

    def match list
        list.select {|str| word.chars.sort == str.chars.sort  } 
    end

end
 
 
#test = Anagram.new "test"

#binding.pry