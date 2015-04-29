 
require 'spec_helper'

RSpec.describe ChildInfoController, :type => :controller do

  describe 'getting the children assigned to a LHW(happy path)' do
  	before :each do
  	  @fake_results = [mock('child1'),mock('child2')]
      ch=double(ChildInfo, :nurse_name => "Abeera",:id => "1")
      ChildInfo.stub!(:find_by_nurse_name).with("Abeera").and_return(ch)
  	end
    it 'should generate routing for children list' do
      { :get => child_info_index_path("Abeera") }.
      should route_to(:controller => "ChildInfo", :action => "index", :name => "Abeera")
    end
    it 'should call the controller method that finds children of the ' do
      @controller = ChildInfoController.new()
      @controller.should_receive(:index)
      get :index, :name => "Abeera"
    end
    it "should call model method" do
      ChildInfo.should_receive(:get_children).with('Abeera').and_return(@fake_results)
      get :index, :name => "Abeera"
    end
    it "should render index template" do
      ChildInfo.should_receive(:get_children).with('Abeera').and_return(@fake_results)
      get :index, :name => "Abeera"
      response.should render_template('index')
      assigns(:child).should == @fake_results
    end
  end

  describe 'getting the children assigned to a LHW((sad path)' do
    before :each do
      ch=double(ChildInfo, :nurse_name => "Abeera",:id => "1")
      ChildInfo.stub!(:find_by_nurse_name).with("Abeera").and_return(ch)
    end
    
    it 'should generate routing for children list' do
      { :get => child_info_index_path("Abeera") }.
      should route_to(:controller => "ChildInfo", :action => "index", :name => "Abeera")
    end
  end

end



