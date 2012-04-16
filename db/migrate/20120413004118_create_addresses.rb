class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :person_id
      t.string :street
      t.string :state
      t.string :zipcode
      t.timestamps
    end
  end
end
