#email:string
#password_digest:string
#
#password:string virtual
#password_confirmation: string virtual 

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true
  validates :password_confirmation, presence: true
end
