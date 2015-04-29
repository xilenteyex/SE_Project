class ChildInfo < ActiveRecord::Base
  attr_accessible :id, :name, :family_number, :nurse_name, :date_of_birth, :polio_1, :polio_2, :polio_3, :polio_4, :measles_1, :measles_2

  def self.get_children(lhw_name)
	ChildInfo.where(:nurse_name => lhw_name)
  end
end
