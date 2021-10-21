class EditPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :pet_accessory_image
    remove_column :pets, :pet_accessory_class
    remove_column :pets, :background_image
    remove_column :pets, :pet_food_image
    remove_column :pets, :pet_food_class
  end
end
