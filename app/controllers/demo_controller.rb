class DemoController < ApplicationController
  
  layout 'application'
  
  def index
    # render('hello')
  end
  
  def hello
    # render('index')
    @array = [1,2,3,4,5]
    # @id = params[:id]
    @page = params[:page]
  end
  
  def other_hello
    redirect_to(:action => 'index')
  end
  
  def google
    redirect_to('http://www.google.com')
  end
  
  def escape_output
    
  end
end

# Render Template Syntax (3-ways):
# render(:template => 'demo/hello')
# render('demo/hello')
# render('hello')