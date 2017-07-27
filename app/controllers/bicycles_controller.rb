class BicyclesController < ApplicationController
  def index

  	page_size = 5
  	@page_num = 0
  	if params[:page] != nil then
  		@page_num = params[:page].to_i
  	end
  	@data = Bicyclepost.where('bicyclecategory_id = ?', params[:id])
  		
  end
end
