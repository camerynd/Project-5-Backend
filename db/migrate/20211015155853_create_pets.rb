class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :pet_class
      t.string :pet_image
      t.string :pet_accessory_class
      t.string :pet_accessory_image
      t.string :background_image
      t.string :pet_name
      t.string :pet_message
      t.string :pet_food_class
      t.string :pet_food_image
      t.string :user_id

      t.timestamps
    end
  end
end
