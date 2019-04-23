class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages, id: :uuid do |t|
      t.references :user, null: false, type: :uuid, foreign_key: true
      t.references :room, null: false, type: :uuid, foreign_key: true
      t.text :text, null: false

      t.timestamps
    end
  end
end
