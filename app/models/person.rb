class Person < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :memories
  has_many :favourites

  def self.types
    ["User", "Carer"]
  end

  def is? a_type
    type.downcase == String(a_type).downcase
  end
end
