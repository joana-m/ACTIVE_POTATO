class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :sports, array: true, default: []
      t.date :date
      t.string :address
      t.time :time_of_event
      t.integer :number_of_participants
      t.boolean :morning
      t.boolean :afternoon
      t.boolean :evening

      t.timestamps
    end
  end
end
