 
require 'spec_helper'
 

RSpec.describe ChildInfo, :type => :model do
	before :each do
    	@Child_Info = ChildInfo.new "name", "family_number", "nurse_name", "date_of_birth", "polio_1", "polio_2", "polio_3", "polio_4", "measles_1", "measles_2"
	end

	describe "#name" do
	    it "returns the correct title" do
	        @Child_Info.name.should eql "name"
	    end
	end

	describe "#family_number" do
	    it "returns the correct author" do
	        @Child_Info.family_number.should eql "family_number"
	    end
	end

	describe "#nurse_name" do
	    it "returns the correct category" do
	        @Child_Info.nurse_name.should eql "nurse_name"
	    end
	end

	describe "#date_of_birth" do
	    it "returns the correct category" do
	        @Child_Info.date_of_birth.should eql "date_of_birth"
	    end
	end

	describe "#polio_1" do
	    it "returns the correct category" do
	        @Child_Info.polio_1.should eql "polio_1"
	    end
	end

	describe "#polio_2" do
	    it "returns the correct category" do
	        @Child_Info.polio_2.should eql "polio_2"
	    end
	end

	describe "#polio_3" do
	    it "returns the correct category" do
	        @Child_Info.polio_3.should eql "polio_3"
	    end
	end

	describe "#polio_4" do
	    it "returns the correct category" do
	        @Child_Info.polio_4.should eql "polio_4"
	    end
	end

	describe "#measles_1" do
	    it "returns the correct category" do
	        @Child_Info.measles_1.should eql "measles_1"
	    end
	end

	describe "#measles_2" do
	    it "returns the correct category" do
	        @Child_Info.measles_2.should eql "measles_2"
	    end
	end

	describe "#get_children" do
	    it "returns the children of the area of specified LHW" do
	    	children1 = ChildInfo.create!(:nurse_name => "Abeera");
	    	children2 = ChildInfo.create!(:nurse_name => "Abeera");
	    	expect(ChildInfo.get_children("Abeera")).to eq([children1, children2])
	    end
	end
end
