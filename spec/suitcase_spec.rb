require "suitcase"

describe Suitcase do

  subject(:suitcase) {described_class.new} 

  it "starts empty" do
    expect(suitcase.display_items).to eq("Your suitase is empty :(")
  end

  it "adds an item" do
    suitcase.add("bear")
    expect(suitcase.contents).to have_key(:Bear)
  end

  it "displays items" do
    2.times{suitcase.add("bear")}
    suitcase.add("sandwich")
    expect(suitcase.display_items).to eq("2 x Bear, 1 x Sandwich")
  end

  describe "delete items" do

    before(:each) do
      2.times{suitcase.add("bear")}
    end

    it "gives an error if no such item" do
      expect{suitcase.remove("cat", 1)}.to raise_error("You must be confused... This item isn't currently in your suitcase.")
    end

    it "deletes an item" do
      suitcase.remove("bear", 1)
      expect(suitcase.display_items).to eq("1 x Bear")
    end

    it "deletes multiple items" do
      suitcase.remove("bear", 2)
      expect(suitcase.contents).not_to have_key(:Bear)
    end 

    it "can't remove more items than available" do
      expect{suitcase.remove("bear", 3)}.to raise_error("You only have 2 x Bear")
    end
  end
end