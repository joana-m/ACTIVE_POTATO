class AddUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :sender, foreign_key: { to_table: :users }, null: true
    add_reference :chatrooms, :receiver, foreign_key: { to_table: :users }, null: true
  end
end
