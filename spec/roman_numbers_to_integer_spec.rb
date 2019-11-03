require 'rspec/autorun'
require './src/roman_numbers_to_integer'

describe 'roman_numbers_to_integer' do
  context "when the input is a valid roman number" do
    it "returns 1 for I" do
      result = convert_to_int_num_from("I")
      expect(result).to eq(1)
    end
    it "returns 4 for IV" do
      result = convert_to_int_num_from("IV")
      expect(result).to eq(4)
    end
    it "returns 5 for V" do
      result = convert_to_int_num_from("V")
      expect(result).to eq(5)
    end
    it "returns 9 for IX" do
      result = convert_to_int_num_from("IX")
      expect(result).to eq(9)
    end
    it "returns 10 for X" do
      result = convert_to_int_num_from("X")
      expect(result).to eq(10)
    end
    it "returns 50 for L" do
      result = convert_to_int_num_from("L")
      expect(result).to eq(50)
    end
    it "returns 90 for XC" do
      result = convert_to_int_num_from("XC")
      expect(result).to eq(90)
    end
    it "returns 100 for C" do
      result = convert_to_int_num_from("C")
      expect(result).to eq(100)
    end
    it "returns 490 for CDXC" do
      result = convert_to_int_num_from("CDXC")
      expect(result).to eq(490)
    end
    it "returns 500 for D" do
      result = convert_to_int_num_from("D")
      expect(result).to eq(500)
    end
    it "returns 900 for CM" do
      result = convert_to_int_num_from("CM")
      expect(result).to eq(900)
    end
    it "returns 1000 for M" do
      result = convert_to_int_num_from("M")
      expect(result).to eq(1000)
    end
    it "returns 7 for VII" do
      result = convert_to_int_num_from("VII")
      expect(result).to eq(7)
    end
    it "returns 8 for VIII" do
      result = convert_to_int_num_from("VIII")
      expect(result).to eq(8)
    end
    it "returns 18 for XVIII" do
      result = convert_to_int_num_from("XVIII")
      expect(result).to eq(18)
    end
    it "returns 68 for LXVIII" do
      result = convert_to_int_num_from("LXVIII")
      expect(result).to eq(68)
    end
    it "returns 168 for CLXVIII" do
      result = convert_to_int_num_from("CLXVIII")
      expect(result).to eq(168)
    end
    it "returns 668 for DCLXVIII" do
      result = convert_to_int_num_from("DCLXVIII")
      expect(result).to eq(668)
    end
    it "returns an integer only" do
      result = convert_to_int_num_from("MDCLXVIII")
      expect(result).to eq(1668)
    end
  end

  context "when the input is nil" do
    it "returns a message" do
      result = convert_to_int_num_from("")
      expect(result).to eq("please type a roman number starting from I")
    end
  end

  context "when the input is an integer" do
    it "returns a message" do
      result = convert_to_int_num_from(1)
      expect(result).to eq("please type a roman number starting from I")
    end
  end

  context "when the input is a fraction" do
    it "returns a message" do
      result = convert_to_int_num_from(5.555)
      expect(result).to eq("please type a roman number starting from I")
    end
  end
end
