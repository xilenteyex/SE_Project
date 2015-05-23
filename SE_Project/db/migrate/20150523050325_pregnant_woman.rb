class PregnantWoman < ActiveRecord::Migration
  def up
  	create_table 'pregnant_women_infos' do |t|
    t.string 'id'
    t.string 'name'
    t.string 'family_number'
    t.datetime 'TT1'
    t.datetime 'TT2'
    t.datetime 'checkup1'
    t.datetime 'checkup2'
    t.datetime 'checkup3'
    t.datetime 'checkup4'
    t.string 'hospital'
    t.string 'place_of_birth'
    t.string 'result_pregnancy'
    end
  end

  def down
  	drop_table 'pregnant_women_infos'
  end
end
