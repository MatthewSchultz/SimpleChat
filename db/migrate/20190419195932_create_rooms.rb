class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms, id: :uuid do |t|
      t.string :name, null: false
      t.references :owner, type: :uuid, foreign_key: { to_table: :users }
      t.boolean :visible, default: true, null: false
      t.string :password_digest

      t.timestamps
    end
    add_index :rooms, :name, unique: true
  end
end
