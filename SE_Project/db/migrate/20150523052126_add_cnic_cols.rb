class AddCnicCols < ActiveRecord::Migration
  def up
	add_column :pregnant_women_infos, :nurse_cnic, :string
	add_column :famliy_planning_infos, :nurse_cnic, :string
  end

  def down
  end
end
