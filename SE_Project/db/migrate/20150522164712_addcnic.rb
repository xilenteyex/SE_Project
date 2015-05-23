class Addcnic < ActiveRecord::Migration
  def up
	add_column :child_infos, :cnic ,:string
  end

  def down
  end
end
