class DemoController < ApplicationController
  
  def index
      # Rails 1.0 Style
      # render(:action => 'hello')
      # Rails 2.0 style
      # render(:template => 'demo/hello') or render(demo/hello)
      # Rails 3.0 -- as long as it's in the same folder, otherwise just tell it the folder to look in
      render('hello')
  end
    
  def hello
    render(:text => 'Hello everyone!')
  end
    
end
