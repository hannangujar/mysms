class Contact < ApplicationRecord
  belongs_to :user
  has_one :staff
  has_one :parent

  enum :contact_type, {Mobile: "Mobile", Home: "Home", Office: "Office"}, default: "Mobile"
end
