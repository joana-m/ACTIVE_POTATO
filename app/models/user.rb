class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :events # events I created
  has_many :messages
  has_many :user_events
  has_many :joined_events, through: :user_events, foreign_key: "user_id", source: :event # events I joined
  has_many :my_events_chatrooms, through: :events, foreign_key: "user_id", source: :chatroom # Chatroom that User acts as owner
  has_many :joined_chatrooms, through: :joined_events, foreign_key: "user_id", source: :chatroom # Chatroom that User joined an event
  has_many :sender_chatrooms, foreign_key: "sender_id", class_name: "Chatroom"
  has_many :receiver_chatrooms, foreign_key: "receiver_id", class_name: "Chatroom"

  has_one_attached :avatar
  validates :user_name, :address, :email, presence: true
  validates :user_name, uniqueness: true
  validates :user_name, length: { minimum: 3 }
  validates :user_name, length: { maximum: 6 }
  # validates :email, format: { with: /\A.*@.*\.com\z/ }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  popular

  def chatrooms
    my_events_chatrooms + joined_chatrooms + sender_chatrooms + receiver_chatrooms
  end

  def friends
    Popular::Friendship.where(popular_model: self).or(Popular::Friendship.where(friend: self))
  end

  def unread_receiver_messages
    Message
      .joins(:chatroom)
      .where(read: false, chatrooms: { receiver: self })
  end

  def unread_sender_messages
    Message
      .joins(:chatroom)
      .where(read: false, chatrooms: { sender: self })
  end

  def unread_owner_messages
    Message
      .joins(:chatroom)
      .where.not(user: self)
      .where(read: false, chatrooms: { event_id: events.pluck(:id) })
  end

  def unread_joined_messages
    Message
      .joins(:chatroom)
      .where.not(user: self)
      .where(read: false, chatrooms: { event_id: joined_events.pluck(:id) })
  end

  def unread_messages
    (unread_receiver_messages.or(unread_sender_messages)).count + (unread_owner_messages.or(unread_joined_messages)).distinct.count
  end

  def top_3_friends
    self.friends.first(3)
  end
end

# User.create(user_name: "nasimul", email: "nasimulrahman@gmail.com", password:"fire.wall", bio: "Hello!", address: "Canggu")
