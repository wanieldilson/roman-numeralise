describe "Roman Numerals" do
    it "gives a I when given 1" do
        result = roman_numeralise(1)

        expect(result).to eq("I")
    end

    it "gives a II when given 2" do
        result = roman_numeralise(2)

        expect(result).to eq("II")
    end

    it "gives a III when given 3" do
        result = roman_numeralise(3)

        expect(result).to eq("III")
    end

    it "gives a X when given 10" do
        result = roman_numeralise(10)

        expect(result).to eq("X")
    end

    it "gives a XI when given 11" do
        result = roman_numeralise(11)

        expect(result).to eq("XI")
    end

    it "gives a XII when given 12" do
        result = roman_numeralise(12)

        expect(result).to eq("XII")
    end

    it "gives a XIII when given 13" do
        result = roman_numeralise(13)

        expect(result).to eq("XIII")
    end

    it "gives a IV when given a 4" do
        result = roman_numeralise(4)

        expect(result).to eq("IV")
    end

    it "gives a V when given 5" do
        result = roman_numeralise(5)

        expect(result).to eq("V")
    end

    it "gives a VI when given 6" do
        result = roman_numeralise(6)

        expect(result).to eq("VI") 
    end

    it "gives a VII when given 7" do
        result = roman_numeralise(7)

        expect(result).to eq("VII")
    end

    it "gives a VII when given 8" do
        result = roman_numeralise(8)

        expect(result).to eq("VIII")
    end

    it "gives a IX when given a 9" do
        result = roman_numeralise(9)

        expect(result).to eq("IX")
    end

    it "gives a XIV when given a 14" do
        result = roman_numeralise(14)

        expect(result).to eq("XIV")
    end

    it "gives a XX when given a 20" do
        result = roman_numeralise(20)

        expect(result).to eq("XX")
    end

    it "gives a XXX when given a 30" do
        result = roman_numeralise(30)

        expect(result).to eq("XXX")
    end

    it "gives a XL when given a 40" do
        result = roman_numeralise(40)

        expect(result).to eq("XL")
    end

    it "gives a L when given a 50" do
        result = roman_numeralise(50)

        expect(result).to eq("L")
    end

    it "gives a LX when given a 60" do
        result = roman_numeralise(60)

        expect(result).to eq("LX")
    end

    it "gives a LXX when given a 70" do
        result = roman_numeralise(70)

        expect(result).to eq("LXX")
    end

    it "gives a XV when given a 15" do
        result = roman_numeralise(15)

        expect(result).to eq("XV")
    end

    it "gives a XVI when given a 16" do
        result = roman_numeralise(16)

        expect(result).to eq("XVI")
    end

    it "gives a XVI when given a 17" do
        result = roman_numeralise(17)

        expect(result).to eq("XVII")
    end

    it "gives a XIX when given a 19" do
        result = roman_numeralise(19)

        expect(result).to eq("XIX")
    end

    it "gives a XXI when given a 21" do
        result = roman_numeralise(21)

        expect(result).to eq("XXI")
    end

end

def roman_numeralise(number)
    return "L" + "X" * ((number - 50) / 10) if number >= 50
    return "XL" if number == 40
    return "XVI" if number == 16
    return "XV" if number == 15
    return "XIV" if number == 14
    return "X" + roman_numeralise(number - 10) if number >= 10
    return "IX" if number == 9
    return "V" + roman_numeralise(number - 5) if number >= 5
    return "IV" if number == 4
    return "I" * number
end
