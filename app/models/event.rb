class Event < ApplicationRecord
  SPORTS = ['Surf', 'Yoga', 'Swimming', 'Boxing', 'Hiking', 'Tennis']
  belongs_to :user
  has_many :user_events
  has_many :users, through: :user_events
  has_one :chatroom

  validates :sport, inclusion: {in: SPORTS}
  validates :title, :sport, :address, :time_of_event, presence: true
  validates :description, length: { maximum: 50 }
end
