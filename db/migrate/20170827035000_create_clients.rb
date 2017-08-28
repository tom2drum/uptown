class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string 'full_name', limit: 50, null: false
      t.string 'email', limit: 50, null: false
      t.string 'phone', limit: 10, null: false
      t.timestamps
    end
  end
end
