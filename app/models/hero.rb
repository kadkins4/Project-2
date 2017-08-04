class Hero < ApplicationRecord
  belongs_to :team

  validates :complexity, numericality: { less_than: 4 }
  validates :complexity, numericality: { greater_than: 0 }
  validates :complexity, numericality: true
end
