class User < ApplicationRecord
  has_many :projects, foreign_key: "user_id", dependent: :destroy
  has_many :contractors, foreign_key: "user_id", dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
end
