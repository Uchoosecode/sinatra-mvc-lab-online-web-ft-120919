class PigLatinizer 

    def piglatinize(word)
        
        letters = word.split("")

            if vowel?(word) == true
                letters << "way"
                letters
                
            elsif letters[0..1].include?("p" && "l")
                letters.rotate!(2)
                letters << "ay"
                letters
            
            elsif letters[0..1].include?("t" && "h")
                letters.rotate!(2)
                letters << "ay"
                letters
                
            else vowel?(word) == false
                letters.rotate!
                letters << "ay"
                letters
                binding.pry
            end
            letters.join
    
    end

    def vowel?(word)
        word.downcase!
        vowels = "aeiou"
        vowels.include?(word[0])
    end
   
end