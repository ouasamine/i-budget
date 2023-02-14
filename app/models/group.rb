class Group < ApplicationRecord
  belongs_to :user
  has_many :transacs
  validates :name, :user, presence: true
end
