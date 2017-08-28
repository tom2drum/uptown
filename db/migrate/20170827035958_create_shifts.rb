class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.date 'date', null: false
      t.time 'time', null: false
      t.bigint 'barber_id', null: false
      t.boolean 'is_free', default: true, null: false
      t.bigint 'order_id'
      t.timestamps
    end

    add_index :shifts, :barber_id
    add_index :shifts, :order_id, unique: true

    add_foreign_key :shifts, :barbers
    add_foreign_key :shifts, :orders
  end
end
