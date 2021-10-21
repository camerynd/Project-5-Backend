class AddToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :accessory_1, :string
    add_column :pets, :accessory_2, :string
    add_column :pets, :accessory_3, :string
    add_column :pets, :accessory_4, :string
  end
end
