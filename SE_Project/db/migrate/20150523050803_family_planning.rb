class FamilyPlanning < ActiveRecord::Migration
  def up
  	create_table 'famliy_planning_infos' do |t|
    t.string 'id'
    t.string 'name'
    t.string 'husband_name'
    t.string 'family_number'
    t.integer 'age'
    t.string 'provided_by'
    t.string 'method'
    end
  end

  def down
  	drop_table 'famliy_planning_infos'
  end
end
