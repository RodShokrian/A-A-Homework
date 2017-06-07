require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
	let(:cookies) { Dessert.new("cookie", 500, chef }
  describe "#initialize" do
    it "sets a type"
		expect(cookies.type).to eq("cookie")			
    it "sets a quantity"
		expect(cookies.quantity).to eq(500)
    it "starts ingredients as an empty array"
		expect(cookies.ingredients).to eq([])
    it "raises an argument error when given a non-integer quantity"
		expect(Dessert.new("foo", "bar", "baz").to raise_error(ArgumentError)
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
		cookies.add_ingredient("butter")
		expect(cookies.ingredients).to include("butter")
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
			arr = ["flour", "butter", "sugar", "eggs"]
			arr.each {|ingredient| cookies.add_ingredient(ingredient)}

			expect(cookies.ingredients).to eq(arr)
			cookies.mix!
			expect(cookies.ingredients).not_to eq(arr)
			expect(cookies.ingredients.sort).to eq(arr.sort)
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
			expect(cookies.quantity).to eq(500)
			cookies.eat(50)
			expect(cookies.quantity).to eq(450)

    it "raises an error if the amount is greater than the quantity"
			expect(cookies.eat(550).to raise_error("not enough left!")
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
			expect(cookies.serve).to include("Chef")
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
			expect(chef).to receive(:bake).with(cookies)
			cookies.make_more
  end
end
