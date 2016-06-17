class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :cutoff
      t.string :available
      t.belongs_to :schedule, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
