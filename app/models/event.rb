class Event < ApplicationRecord
  SPORTS = ['Surfing', 'Yoga', 'Swimming', 'Boxing', 'Hiking']
  belongs_to :user
  has_many :user_events
  has_many :users, through: :user_events
  has_one :chatroom

  validates :sport, inclusion: {in: SPORTS}
  validates :title, :sport, :address, :time_of_event, presence: true
  validates :description, length: { maximum: 50 }
end
