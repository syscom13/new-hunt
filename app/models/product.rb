class Product < ApplicationRecord
  belongs_to :user
  has_many :upvotes
  validates :user, presence: true
  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
  validates :tagline, presence: true
  validates :category, inclusion: { in: %w(tech education design), message: "%{value} is not a valid category" }

end
