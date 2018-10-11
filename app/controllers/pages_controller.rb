class PagesController < ApplicationController
  def index
  end
  
  def finish
  @passing = TestPassing.find(session[:test_id])
  session.clear
  end
  
end
