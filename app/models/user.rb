class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #attr_accessor :name, :email, :password, :password_confirmation, :encrypted_password
  validates :name, presence: true
  validates :password, length: { minimum: 6 }
  #has_secure_password
  has_many :posts
end
