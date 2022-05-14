class User < ApplicationRecord

  has_many :addresses
  has_many :contacts
  has_one  :staff
  has_one :parent
  has_one :student

  # Include default devise modules. Others available are:
  #  :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable ,:lockable,:trackable
    
    
    
  validates :email, presence: true
     
  enum :role, {Student: 0, Staff: 1, Parents: 2}, default: :Student
  after_initialize :set_default_role, :if => :new_record?
    def set_default_role
      self.role ||= :Student
    end

   
end