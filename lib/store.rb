class Store < ActiveRecord::Base
  has_many :employees

  # Name must be minimum 3 characters
  validates :name, length: { minimum: 3 }

  # Revenue must be integer >= 0
  validates :annual_revenue, numericality: { only_integer: true, greater_than: -1}

  # Custom validation, must at least carry either men's or women's
  validate :must_carry_mens_or_womens

  def must_carry_mens_or_womens 
    if (!mens_apparel && !womens_apparel)
      errors.add(:store, "must carry at least one of men's or women's apparel")
    end
  end
end
