class Address < ApplicationRecord
  belongs_to :user
  has_one :staff
  has_one :parent

  enum :address_type, {Home: "Home", Office: "Office",}, default: "Home"
end
