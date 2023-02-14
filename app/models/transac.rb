class Transac < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group
  validates :name, :author, :group, :amount, presence: true
end
