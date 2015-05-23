
class ChildInfoDb < ActiveRecord::Migration
  def up
    create_table 'child_infos' do |t|
    t.string'id'
    t.string 'name'
    t.string 'family_number'
    t.string 'nurse_name'
    t.datetime 'date_of_birth'
    t.datetime 'polio_1'
    t.datetime 'polio_2'
    t.datetime 'polio_3'
    t.datetime 'polio_4'
    t.datetime 'measles_1'
    t.datetime 'measles_2'
    t.string 'cnic'
    end
  end

  def down
    drop_table 'child_infos'
  end
end
