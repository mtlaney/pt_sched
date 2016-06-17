class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :lh_region
      t.string :orig
      t.string :dest
      t.string :rail

      t.timestamps null: false
    end
  end
end
