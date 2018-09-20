
def yellowpager(phone_number_alpha)
    phone_number = ""
    phone_number_alpha.each do |letter|
        if letter == "a" || "b" || "c"
            phone_number += "2"
        elsif letter == "d" || "e" || "f"
            phone_number += "3"
        elsif letter == "g" || "h" || "i"
            phone_number += "4"
        elsif letter == "j" || "k" || "l"
            phone_number += "5"
        elsif letter == "m" || "n" || "o"
            phone_number += "6"
        elsif letter == "p" || "q" || "r" || "s"
            phone_number += "7"
        elsif letter == "t" || "u" || "v"
            phone_number += "8"
        elsif letter == "w" || "x" || "y" || "z"
            phone_number += "9"
        else
            puts "wrong"
        end
    puts phone_number
end
    
x = "adij"
yellowpager(x)