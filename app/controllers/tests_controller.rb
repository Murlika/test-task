class TestsController < ApplicationController
  def index
	 @tests = Test.ordered
  end
  
  def show
	@test = Test.find_by_id params[:id]
  end
end
