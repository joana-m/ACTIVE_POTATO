class Chatroom < ApplicationRecord
  belongs_to :event, optional: true
  belongs_to :sender, optional: true, class_name: "User"
  belongs_to :receiver, optional: true, class_name: "User"
  has_many :messages

  def other_person(current_user)
    if event
      if current_user == event.user
        event.users
      else
        # TODO: Change to everyone else
        event.user
      end
    elsif current_user == sender
      receiver
    else
      sender
    end
  end
end
