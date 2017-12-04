class DemosController < ApplicationController

  def index
    @photos =Photos.all
  end
  

  def hello
    @array = [1,2,3,3,4,45,55,5,56,]
    render ('hello')
  end


  def hello1
    # redirect_to(:controller=>"demo", :action=>"index")
    redirect_to( :action=>"index")
  end

  def youtube
    redirect_to('http://youtube.com')
  end
end
