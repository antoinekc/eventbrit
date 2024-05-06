class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances

  validates :start_date, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than:0, multiple_of:5 } 
  validates :title, presence: true, length: { minimum:5, maximum:140 }
  validates :description, presence: true, length: { minimum:5, maximum:140 }
  validates :price, presence:true, numericality: {only_integer: true, greater_than:1, less_than:1000}
  validate :start_date_cannot_be_in_the_past

  private

  def start_date_cannot_be_in_the_past
    errors.add(:start_date, "can't be in the past") if start_date.present? && start_date < DateTime.now
  end

end


