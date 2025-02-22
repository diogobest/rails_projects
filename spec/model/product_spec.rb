require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid with a name and price" do
    product = create(:product)

    expect(product).to be_valid
  end

  it "is invalid without a name" do
    product = Product.new(name: nil)
    product.valid?
    expect(product.errors[:name]).to include("can't be blank")
  end

  it "is invalid without a price" do
    product = Product.new(price: nil)
    product.valid?
    expect(product.errors[:price]).to include("can't be blank")
  end

  it "is invalid without a category" do
    product = Product.new(category: nil)
    expect(product.valid?).to eq(false)
  end
end
