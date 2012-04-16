class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :attribute1
      t.string :attribute2
      t.timestamps
    end
  end
end
