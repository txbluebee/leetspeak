class String
  define_method(:leetspeak) do
    words = self.split()
    final_sentence_array = []
    words.each() do |word|
      letters = word.split("")
      new_letters = []
      letters.each() do |letter|
        if letter.==("e")
          new_letters.push("3")
        elsif letter.==("o")
          new_letters.push("0")
        elsif letter.==("I")
          new_letters.push("1")
        elsif letter.==("s")
          new_letters.push("z")
        else
          new_letters.push(letter)
        end
      end #letter loop
      if letters.first()==("s")
        new_letters.shift()
        new_letters.unshift("s")
      end
      new_word = new_letters.join("")
      final_sentence_array.push(new_word)
    end #word loop
    result = final_sentence_array.join(" ")
    result
  end
end
