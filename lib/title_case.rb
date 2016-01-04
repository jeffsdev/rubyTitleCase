# Behavior: It capitalizes the first letter of a single word
# Input: beowulf
# Output: Beowulf

# Behavior: It capitalizes the first letter of a multiple word string
# Input: beowulf begins
# Output: Beowulf Begins

# Behavior: It does not capitalize designated words (prepositions, conjunctions, etc)
# Input: beowulf from brighton beach
# Output: Beowulf from Brighton Beach

# Behavior: It capitalizes designated words if they are the first word
# Input: from beowulf to the hulk
# Output: From Beowulf to the Hulk

# Behavior: It handles non-letter characters
# Input: 57 beowulf alternate endings!!
# Output: 57 Beowulf Alternate Endings!!

# Behavior: It manages all uppercase entries
# Input: BEOWULF ON THE ROCKS
# Output: Beowulf on the Rocks

# Behavior: It manages mixed case entries
# Input: BeoWulf aNd mE
# Output: Beowulf and Me

class String
  define_method(:title_case) do
    non_cap_words = ["the", "and", "of", "or", "from", "but", "to", "on"]
    split_sentence = self.split()
    split_sentence.each() do |word|
      if !non_cap_words.include?(word) || split_sentence.index(word) == 0
        word.capitalize!()
      end
    end
    split_sentence.join(" ")
  end
end
