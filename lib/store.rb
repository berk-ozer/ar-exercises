class Store < ActiveRecord::Base
  has_many :employees

  # Name must be minimum 3 characters
  validates :name, length: { minimum: 3 }

  # Revenue must be integer >= 0
  validates :annual_revenue, numericality: { only_integer: true, greater_than: -1}
end
