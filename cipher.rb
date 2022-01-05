def cipher(phrase, shift)
  ord_array = []
  index = 0
  phrase_array = phrase.split('')
  phrase_array.each do |key|
    if key.ord >= 65 && key.ord <= 90
      if key.ord + shift > 90
        ord_array[index] = ((shift - (90 - key.ord)) + 64).chr
      elsif key.ord + shift < 65
        ord_array[index] = ((shift + (key.ord - 65)) + 91).chr
      else
        ord_array[index] = (key.ord + shift).chr
      end
    elsif key.ord >= 97 && key.ord <= 122
      if key.ord + shift > 122
        ord_array[index] = ((shift - (122 - key.ord)) + 96).chr
      elsif key.ord + shift < 97
        ord_array[index] = ((shift + (key.ord - 97)) + 123).chr
      else
        ord_array[index] = (key.ord + shift).chr
      end
    else
      ord_array[index] = key
    end
    index += 1
  end
  ord_array.join
end

