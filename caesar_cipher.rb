# Creates a caesar shift cipher and implements it

# Takes a string as input, outputs a caesar shifted string
def caesar_cipher(string_in, shift_value = 0)
	string_out = ""
	string_in.each_byte do |character|											# Iterates each character in the string, one at a time
		character_value = character.ord
		new_value = character_value + shift_value
		if(character_value.between?(65,90)) 									# True means Uppercase
			new_value -= 26 if new_value > 90						# Wraps Uppercase Z to Uppercase A
		else																	# False means Lowercase
			new_value -= 26 if new_value > 122						# Wraps Lowercase z to Lowercase a
		end
		string_out = string_out + new_value.chr  							# Add shifted character to output string
	end
	return string_out
end

puts "Enter string of characters:"
input_string = gets.chomp
puts "Enter shift key value (positive integer)"
shift_key = gets.chomp.to_i
puts caesar_cipher(input_string, shift_key)