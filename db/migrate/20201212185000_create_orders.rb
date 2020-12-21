class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :total_price
      t.integer :total_quantity
      t.integer :status, default: 0
      t.string :payment_mode

      t.timestamps
    end
  end
end
