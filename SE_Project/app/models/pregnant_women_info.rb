class PregnantWomenInfo < ActiveRecord::Base
  attr_accessible :name, :nurse_cnic, :family_number, :TT1, :TT2, :checkup1, :checkup2, :checkup3, :checkup4, :hospital, :place_of_birth, :result_pregnancy
end
