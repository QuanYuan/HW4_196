class CreateSubordinates < ActiveRecord::Migration
  def change
    create_table :subordinates do |t|
      t.string :name
      t.string :work_for

      t.timestamps
    end
  end
end
