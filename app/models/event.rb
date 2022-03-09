class Event < ApplicationRecord
  SPORTS = ['Surfing', 'Yoga', 'Swimming', 'Boxing', 'Hiking']
  belongs_to :user
  has_many :user_events
  has_many :users, through: :user_events
  has_one :chatroom

  validates :sport, inclusion: {in: SPORTS}
end
