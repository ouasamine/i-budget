class Group < ApplicationRecord
  belongs_to :user
  has_many :transacs, dependent: :destroy
  validates :name, :user, presence: true

  def total_amount
    total = 0
    transacs.each do |t|
      total += t.amount
    end
    total
  end

  def date
    date = ''
    date += "#{created_at.day} "
    date += "#{Date::ABBR_MONTHNAMES[created_at.month]} "
    date += created_at.year.to_s
    date
  end
end
