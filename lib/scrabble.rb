class String
  define_method(:scrabble) do
    letters_score = 0
    letters = Hash.new()
    letters.store("a",1)
    letters.store("e",1)
    letters.store("i",1)
    letters.store("o",1)
    letters.store("u",1)
    letters.store("l",1)
    letters.store("n",1)
    letters.store("r",1)
    letters.store("s",1)
    letters.store("t",1)
    letters.store("d",2)
    letters.store("g",2)
    letters.store("b",3)
    letters.store("c",3)
    letters.store("m",3)
    letters.store("p",3)
    letters.store("f",4)
    letters.store("h",4)
    letters.store("v",4)
    letters.store("w",4)
    letters.store("y",4)
    letters.store("k",5)
    letters.store("j",8)
    letters.store("x",8)
    letters.store("q",10)
    letters.store("z",10)
    lowercase_word = self.downcase()
    input_letters = lowercase_word.split("")
    input_letters.each() do |letter|
      letters_score += (letters.fetch(letter))
     end
  letters_score
  end
end
