class ContainerController < ApplicationController
  
  #This method allocate the location to the container
  def allocate
    container = params[:container]    
    @locations, result = ContainerCrud.allocate(container) 
    if result == 'SUCCESS'
      render :action => "allocate"
    else
      render :json => @locations 
    end
  end
end
