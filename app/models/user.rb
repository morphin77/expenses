class User < ApplicationRecord
<<<<<<< HEAD
  
=======
>>>>>>> 7f9db3b2c2e2b6c7aafd5c09cce8861e556e1308
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
end
