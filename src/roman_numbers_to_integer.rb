def convert_to_int_num_from(roman)
  if roman == "" || roman == nil || !roman.kind_of?(String)
    return "please type a roman number starting from I"
  end
  int_number = 0

  while roman.length > 0 do
    ROMAN_TO_INTEGER.each_key do |key|
      if roman.start_with? key
        int_number += ROMAN_TO_INTEGER[key]
        roman = roman[key.length..-1]
      end
    end
  end

  int_number
end

ROMAN_TO_INTEGER = {
  "CM" => 900,
  "CD" => 400,
  "XC" => 90,
  "XL" => 40,
  "IX" => 9,
  "IV" => 4,
  "M" => 1000,
  "D" => 500,
  "C" => 100,
  "L" => 50,
  "X" => 10,
  "V" => 5,
  "I" => 1
}
