require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do

      # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They are able to add item to cart" do
    # ACT
    visit root_path
    first('article.product').find_link('Add').click

    # DEBUG / VERIFY
    puts page.html
  end
end
