class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  validates :username, :name, presence: true
  validates :username, length: { maximum: 30 }
  validates :username, uniqueness: true
end
