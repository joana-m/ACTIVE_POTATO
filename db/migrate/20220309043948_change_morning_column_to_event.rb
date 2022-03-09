class ChangeMorningColumnToEvent < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :morning, :boolean, default: "false"
  end
end
