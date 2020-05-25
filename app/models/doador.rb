class Doador < ApplicationRecord
  belongs_to :user , polymorphic: true
  has_many :messages
  
  has_one_attached :image
end
