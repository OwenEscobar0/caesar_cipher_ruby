
def caesar_cipher(word, number)

       if word.nil?
        return ""
       end
    array_1 = ("a".."z").to_a

    array_2 = ("A".."Z").to_a

    array_blanks = ""


    word.each_char do |index|
        if index =~ /[a-z]/

            first_array = array_1.find_index(index)
            new_array = ( first_array + number ) % array_1.count
            array_blanks += array_1[new_array]

        elsif index =~ /[A-Z]/
            first_array = array_2.find_index(index)
            new_array = ( first_array + number ) % array_2.count
            array_blanks += array_2[new_array]

        else
            array_blanks += index
        end

    end

     p array_blanks


end

 caesar_cipher("What a string!", 5)

 

