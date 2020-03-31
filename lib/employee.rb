class Employee < ActiveRecord::Base
  belongs_to :store

  # first/last name must be present
  validates :first_name, :last_name, presence: true

  # hourly rate must be integer 40-200
  validates :hourly_rate, numericality: {only_integer: true, greater_than: 40, less_than: 200}

  # employee must belong to a store
  validates :store_id, presence: true

  
end
