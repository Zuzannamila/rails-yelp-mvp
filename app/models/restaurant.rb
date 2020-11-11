class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]
end

# class Review < ApplicationRecord
#   belongs_to :restaurant

#   validates :content, presence: true
#   # validates :rating, presence: true
#   # validates :rating, numericality: { only_integer: true }
#   # validates :rating, inclusion: 1..5
# end
