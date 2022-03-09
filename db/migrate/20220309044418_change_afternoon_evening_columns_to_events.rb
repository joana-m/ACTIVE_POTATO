class ChangeAfternoonEveningColumnsToEvents < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :afternoon, :boolean, default: "false"
    change_column :events, :evening, :boolean, default: "false"
  end
end
