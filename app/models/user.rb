class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events # events I created
  has_many :messages
  has_many :user_events
  has_many :joined_events, through: :user_events, foreign_key: "user_id", source: :event # events I joined
  has_many :my_events_chatrooms, through: :events, foreign_key: "user_id", source: :chatroom # Chatroom that User acts as owner
  has_many :joined_chatrooms, through: :joined_events, foreign_key: "user_id", source: :chatroom # Chatroom that User joined an event

  def chatrooms
    my_events_chatrooms + joined_chatrooms
  end
end
