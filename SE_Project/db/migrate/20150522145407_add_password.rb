class AddPassword < ActiveRecord::Migration
  def up
  	add_column :nurse_infos, :password ,:string
  end

  def down
  end
end
