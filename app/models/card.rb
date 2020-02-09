class Card < ApplicationRecord
  belongs_to :list
  has_many :tags, through: :card_tags
  has_many :card_tags
end
