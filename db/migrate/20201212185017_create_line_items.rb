class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.date :canceled_at

      t.timestamps
    end
  end
end
