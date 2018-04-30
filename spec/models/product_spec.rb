require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'should be auto-assigned by AR for saved records' do
      @category = Category.new
      @product = Product.new(name: "product", price: 1, quantity: 1, category: @category)
      # we use bang here b/c we want our spec to fail if save fails (due to validations)
      # we are not testing for successful save so we have to assume it will be successful
      @product.save!

      expect(@product.id).to be_present
    end

    it 'should validate the presence of a name' do
      @category = Category.new
      @product = Product.new(name: nil, price: 1, quantity: 1, category: @category)
      expect(@product.name).to be_nil
    end

    it 'should validate the presence of a price' do
      @category = Category.new
      @product = Product.new(name: "product", price: nil, quantity: 1, category: @category)
      expect(@product.price).to be_nil
    end

    it 'should validate the presence of a quantity' do
      @category = Category.new
      @product = Product.new(name: "product", price: 1, quantity: nil, category: @category)
      expect(@product.quantity).to be_nil
    end

    it 'should validate the presence of a category' do
      @category = Category.new
      @product = Product.new(name: "product", price: 1, quantity: 1, category: nil)
      expect(@product.category).to be_nil
    end
  end
end



    # validates :name, presence: true
    # validates :price, presence: true
    # validates :quantity, presence: true
    # validates :category, presence: trues
