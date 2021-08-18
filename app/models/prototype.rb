class Prototype < ApplicationRecord
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  belongs_to :prototypes
  has_one_attached :image
  validates :image, presence: true
end
