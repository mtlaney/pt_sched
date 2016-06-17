class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :equipment_preference
      t.belongs_to :schedule, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
