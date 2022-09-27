def cipher(phrase, shift)
  ord_array = []
  index = 0
  phrase_array = phrase.split('')
  phrase_array.each do |key|
    ord_array[index] = if key.ord >= 65 && key.ord <= 90
                         if key.ord + shift > 90
                           ((shift - (90 - key.ord)) + 64).chr
                         elsif key.ord + shift < 65
                           ((shift + (key.ord - 65)) + 91).chr
                         else
                           (key.ord + shift).chr
                         end
                       elsif key.ord >= 97 && key.ord <= 122
                         if key.ord + shift > 122
                           ((shift - (122 - key.ord)) + 96).chr
                         elsif key.ord + shift < 97
                           ((shift + (key.ord - 97)) + 123).chr
                         else
                           (key.ord + shift).chr
                         end
                       else
                         key
                       end
    index += 1
  end
  ord_array.join
end
