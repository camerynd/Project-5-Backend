class DeleteAdventuresTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :adventures
  end
end
