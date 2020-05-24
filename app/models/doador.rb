class Doador < ApplicationRecord
  belongs_to :user , polymorphic: true
  belongs_to :message

  has_one_attached :image
end
