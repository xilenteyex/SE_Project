class AddNurse < ActiveRecord::Migration
  def up
    create_table 'nurse_infos' do |t|
    t.string'id'
    t.string 'name'
    t.string 'cnic'
    t.string 'rank'
    t.datetime 'date_of_birth'
    end
  end
  def down
    drop_table 'nurse_infos'
  end
end
