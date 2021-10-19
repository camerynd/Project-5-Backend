class CreateAdventures < ActiveRecord::Migration[6.1]
  def change
    create_table :adventures do |t|
      t.integer :user_id
      t.string :character_name
      t.string :choice_1
      t.string :choice_2
      t.string :choice_3
      t.string :choice_4
      t.string :choice_5
      t.boolean :adventure_status
      t.string :last_words

      t.timestamps
    end
  end
end
