class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.bigint 'client_id', null: false
      t.bigint 'service_id', null: false
      t.string 'status', limit: 20, null: false, default: 'new'
      t.timestamps
    end

    add_index :orders, [:client_id, :service_id]

    add_foreign_key :orders, :clients
    add_foreign_key :orders, :services
  end
end
