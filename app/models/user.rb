 class User < ApplicationRecord
  enum tipo: { doador:0, ong:1 }
  
  has_one :doador
  has_one :ong
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
