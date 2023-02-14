class Group < ApplicationRecord
  belongs_to :user
  has_many :transacs
  validates :name, :user, presence: true

  def total_amount
    total = 0
    transacs.each do |t|
      total += t.amount
    end
    total
  end
end
