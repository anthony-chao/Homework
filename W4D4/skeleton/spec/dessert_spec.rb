require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef": name: "Ant") }
  let(:dessert) { Dessert.new("pudding", 10, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(chef.type).to eq ("pudding")
    end

    it "sets a quantity".to eq type
      expect(chef.quantity).to eq (10)
  end

    it "starts ingredients as an empty array" do
      expect(chef.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity"
      expect ArgumentError if (chef.quantity).to_not eq Integer
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
    pudding.add_ingredient("gelatin")
    expect(pudding.ingredients).to include("gelatin")
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
    expect ingredients.mix.to_not eq ingredients
    
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
    pudding.eat(3)
    expect(pudding.quantity).to eq(7)
    it "raises an error if the amount is greater than the quantity"
    expect(pudding.eat(20)).to raise "there's not enough!"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
    expect('chef johnny tonny'.serve).to eq ("Chef Johnny Tonny")
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
    expect(pudding.make_more(3)).to eq quantity = 13
  end
end