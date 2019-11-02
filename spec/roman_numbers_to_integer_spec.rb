#require 'rspec_autorun'
#require '../src/roman_numbers_to_integer'

def get_int_num (rom)
  if rom == "" || rom == nil || !rom.kind_of?(String)
    return "please type a roman number starting from I"
  end

  int_number = 0
  i = 0
  romarr = rom.split('')
  while i < romarr.length
    if romarr[i + 1] && INT[romarr[i] + romarr[i + 1]]
      int_number += INT[romarr[i] + romarr[i + 1]]
      i += 2
    else
      int_number += INT[romarr[i]]
      i += 1
    end
  end
  int_number
end

INT = {
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


describe 'roman_numbers_to_integer' do
  context "when the input is a valid roman number" do
    it "returns 1 for I" do
      result = get_int_num("I")
      expect(result).to eq(1)
    end
    it "returns 4 for IV" do
      result = get_int_num("IV")
      expect(result).to eq(4)
    end
    it "returns 5 for V" do
      result = get_int_num("V")
      expect(result).to eq(5)
    end
    it "returns 9 for IX" do
      result = get_int_num("IX")
      expect(result).to eq(9)
    end
    it "returns 10 for X" do
      result = get_int_num("X")
      expect(result).to eq(10)
    end
    it "returns 50 for L" do
      result = get_int_num("L")
      expect(result).to eq(50)
    end
    it "returns 90 for XC" do
      result = get_int_num("XC")
      expect(result).to eq(90)
    end
    it "returns 100 for C" do
      result = get_int_num("C")
      expect(result).to eq(100)
    end
    it "returns 490 for CDXC" do
      result = get_int_num("CDXC")
      expect(result).to eq(490)
    end
    it "returns 500 for D" do
      result = get_int_num("D")
      expect(result).to eq(500)
    end
    it "returns 900 for CM" do
      result = get_int_num("CM")
      expect(result).to eq(900)
    end
    it "returns 1000 for M" do
      result = get_int_num("M")
      expect(result).to eq(1000)
    end
    it "returns 8 for VIII" do
      result = get_int_num("VIII")
      expect(result).to eq(8)
    end
    it "returns 18 for XVIII" do
      result = get_int_num("XVIII")
      expect(result).to eq(18)
    end
    it "returns 68 for LXVIII" do
      result = get_int_num("LXVIII")
      expect(result).to eq(68)
    end
    it "returns 168 for CLXVIII" do
      result = get_int_num("CLXVIII")
      expect(result).to eq(168)
    end
    it "returns 668 for DCLXVIII" do
      result = get_int_num("DCLXVIII")
      expect(result).to eq(668)
    end
    it "returns an integer only" do
      result = get_int_num("MDCLXVIII")
      expect(result).to eq(1668)
    end
  end

  context "when the input is nil" do
    it "returns a message" do
      result = get_int_num("")
      expect(result).to eq("please type a roman number starting from I")
    end
  end

  context "when the input is an integer" do
    it "returns a message" do
      result = get_int_num(1)
      expect(result).to eq("please type a roman number starting from I")
    end
  end

  context "when the input is a fraction" do
    it "returns a message" do
      result = get_int_num(5.555)
      expect(result).to eq("please type a roman number starting from I")
    end
  end
end
