class FamilyPlanningInfo < ActiveRecord::Base
  attr_accessible :name, :nurse_cnic, :family_number, :husband_name, :age, :provided_by, :method
end
