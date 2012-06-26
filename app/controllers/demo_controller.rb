class DemoController < ApplicationController
  
  def index
      # Rails 1.0 Style
      # render(:action => 'hello')
      # Rails 2.0 style
      # render(:template => 'demo/hello') or render(demo/hello)
      # Rails 3.0 -- as long as it's in the same folder, otherwise just tell it the folder to look in
      # render('hello')
      # how a redirect works. specify :controller in the hash if necessary.
      # redirect_to(:action => 'other_hello')
  end
    
  def hello
    # render(:text => 'Hello everyone!')
    # redirect_to("http://www.lynda.com")
    @array = [1,2,3,4,5]
    @id = params[:id].to_i
    @page = params[:page].to_i
  end
    
  def other_hello
    render(:text => 'Hello everyone!')
  end
  
end
