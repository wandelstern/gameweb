class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets, dependent: :destroy

  validates :username,
            presence: true,
            uniqueness: true,
            length: { maximum: 20 }
end