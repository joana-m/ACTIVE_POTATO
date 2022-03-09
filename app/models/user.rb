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

  has_one_attached :avatar
  validates :user_name, :address, :email, presence: true
  validates :user_name, uniqueness: true
  validates :user_name, length: { minimum: 3 }
  validates :user_name, length: { maximum: 9 }
  # validates :email, format: { with: /\A.*@.*\.com\z/ }

  def chatrooms
    my_events_chatrooms + joined_chatrooms
  end
end

# User.create(user_name: "nasimul", email: "nasimulrahman@gmail.com", password:"fire.wall", bio: "Hello!", address: "Canggu")
