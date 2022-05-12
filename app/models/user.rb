class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validates :email, presence: true
     
    enum :role, {Student: 0, Staff: 1, Parents: 2}, default: :Student
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
      self.role ||= :Student
    end

    has_many :addresses
    has_many :contacts
    has_one  :staff
    has_one :parent
    has_one :student
end