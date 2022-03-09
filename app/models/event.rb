class Event < ApplicationRecord
  belongs_to :user
  has_many :user_events
  has_many :users, through: :user_events
  has_one :chatroom

  validates :title, :sports, :address, :time_of_event, presence: true
  validates :description, length: { maximum: 50 }
end
