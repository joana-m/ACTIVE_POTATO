class Chatroom < ApplicationRecord
  belongs_to :event, optional: true
  belongs_to :sender, optional: true, class_name: "User"
  belongs_to :receiver, optional: true, class_name: "User"
  has_many :messages

  def other_person(current_user)
    if current_user == sender
      receiver
    else
      sender
    end
  end
end
