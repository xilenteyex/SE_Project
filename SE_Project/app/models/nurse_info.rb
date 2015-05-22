class NurseInfo < ActiveRecord::Base
  attr_accessible :id, :name, :cnic, :rank, :date_of_birth, :password

  def self.get_nurse()
	NurseInfo.all;
  end
end
