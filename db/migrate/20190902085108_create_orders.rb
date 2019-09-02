class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.monetize :amount, currency: { present: false }
      t.string :teddy_sku
      t.references :user, foreign_key: true
      t.string :state
      t.json :payment

      t.timestamps
    end
  end
end
