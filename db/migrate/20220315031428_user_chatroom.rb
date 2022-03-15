class UserChatroom < ActiveRecord::Migration[6.1]
  def change
    change_column :chatrooms, :event_id, :bigint, null: true
  end
end
