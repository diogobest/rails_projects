require 'rails_helper'

RSpec.describe Category, type: :model do
  it "is valid with a name" do
    category = create(:category)

    expect(category).to be_valid
  end

  it "is invalid without a name" do
    category = Category.new(name: nil)
    category.valid?
    expect(category.errors[:name]).to include("can't be blank")
  end

  it 'can have many products' do
    category = create(:category)
    product = create(:product, category: category)

    expect(category.products).to include(product)
  end
end
