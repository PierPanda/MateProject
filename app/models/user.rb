class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :challenges
  has_many :user_challenges

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
