class RenamePersonFields < ActiveRecord::Migration
  def up
    rename_column :people, :attribute1, :first
    rename_column :people, :attribute2, :last
  end

  def down
  end
end
