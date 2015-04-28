class ChildInfoController < ApplicationController
  def index
    @temp = "hello world"
    @child = ChildInfo.where(:nurse_name => 'Abeera')
    puts @child
  end


end



  
