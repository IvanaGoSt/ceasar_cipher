puts "Enter a string!"
string_input = gets.chomp
puts "Enter the shift!"
shift_input = gets.chomp.to_i
def get_ch(start_ord, end_ord, ch, shift)
  if ch.ord + shift > end_ord
    ord = start_ord + (ch.ord + shift - end_ord)-1
  else
    ord = ch.ord + shift
  end
  ord.chr
end
def ceasar_cipher(str, shift)
  cipher_str = []
  str.chars.map do |ch|
    if !ch.ord.between?(97, 122) && !ch.ord.between?(65, 90)
      cipher_str << ch
    elsif ch == ch.upcase
      cipher_str << get_ch(65, 90, ch, shift)
    else
      cipher_str << get_ch(97, 122, ch, shift)
    end
  end  
  puts cipher_str.join("")
end
ceasar_cipher(string_input, shift_input)
