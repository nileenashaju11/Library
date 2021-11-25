class CreatePitcures < ActiveRecord::Migration[6.1]
  def change
    create_table :pitcures do |t|
      t.references :imagable, polymorphic: true, null: false
      t.string :image

      t.timestamps
    end
  end
end
