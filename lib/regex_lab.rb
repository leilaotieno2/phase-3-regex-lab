def starts_with_a_vowel?(word)
    word.downcase.match?(/\A[aeiou]/)
  end
  
  def words_starting_with_un_and_ending_with_ing(text)
    text.split.select { |word| word.downcase.start_with?('un') && word.downcase.end_with?('ing') }
  end
  
  def words_five_letters_long(text)
    text.split.select { |word| word.length == 5 }
  end
  
  def first_word_capitalized_and_ends_with_punctuation?(text)
    first_word = text.split.first
    return false unless first_word
  
    first_letter = first_word[0]
    last_character = text[-1]
    
    first_letter == first_letter.upcase && last_character.match?(/[[:punct:]]\z/)
  end
  
  def valid_phone_number?(phone)
    phone.gsub(/[^0-9]/, '').match?(/\A\d{10}\z/)
  end
  