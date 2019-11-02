def get_roman_num (num)
  if num == nil || num <= 0 || !num.kind_of?(Integer)
    return "please type a number starting from 1"
  end

  roman_numbers = ""

  ROMAN_LETTERS.keys.each do |key|
    x , num = num.divmod(key)
    roman_numbers << ROMAN_LETTERS[key] * x
  end
  roman_numbers
end

ROMAN_LETTERS = {
  1000 => "M" ,
  900 => "CM" ,
  500 => "D" ,
  400 => "CD" ,
  100 => "C" ,
  90 => "XC" ,
  50 => "L" ,
  40 => "XL" ,
  10 => "X" ,
  9 => "IX" ,
  5 => "V" ,
  4 => "IV" ,
  1 => "I"
}
