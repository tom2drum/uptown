class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.bigint 'order_id', null: false
      t.text 'body', null: false
      t.integer 'grade', default: 1, null: false
      t.timestamps
    end

    add_index :testimonials, :order_id, unique: true

    add_foreign_key :testimonials, :orders
  end
end
