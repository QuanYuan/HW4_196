class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.string :name
      t.integer :age
      t.datetime :office_time

      t.timestamps
    end
  end
end
