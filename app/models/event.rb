class Event < ApplicationRecord
  SPORTS = ['Surfing', 'Yoga', 'Swimming', 'Boxing', 'Hiking', 'Tennis', 'Crossfit', 'Running']
  belongs_to :user
  has_many :user_events
  has_many :users, through: :user_events
  has_one :chatroom

  validates :sport, inclusion: {in: SPORTS}
  validates :title, :sport, :address, :time_of_event, presence: true
  validates :description, length: { maximum: 50 }

  before_create :assign_time_of_day

  def assign_time_of_day
    if time_of_event.hour < 12
      self.morning = true
    elsif time_of_event.hour >= 12 && time_of_event.hour < 17
      self.afternoon = true
    else
      self.evening = true
    end
  end

  def image_source
    if morning
      "sun.png"
    elsif afternoon
      "afternoon.png"
    else
      "evening.png"
    end
  end
end
