class StaticPagesController < ApplicationController
  def home
    render :layout => false
  end
  
  def help
  end
  
  def about
    render :layout => false

  end
  
  def basic
    render :layout => false
  end
end
