class Doador < ApplicationRecord
  belongs_to :user , polymorphic: true

  has_one_attached :image
end
