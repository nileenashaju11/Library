class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :review
      t.belongs_to :book, index: true
      t.belongs_to :author, index: true

      t.timestamps
    end
  end
end
