class CreateSeaFishes < ActiveRecord::Migration[7.0]
  def change
    create_table :sea_fishes do |t|
      t.string :name_143
      t.string :characteristic_143
      t.string :color_143
      t.string :size_143
      t.string :behavior_143
      t.string :habitat_143

      t.timestamps
    end
  end
end
