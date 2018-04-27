class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :description, presence: true,
                          length: { minimum: 5 }
  validates :rating, numericality: { less_than: 6, greater_than: 0 }
end
