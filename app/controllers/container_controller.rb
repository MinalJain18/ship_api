class ContainerController < ApplicationController
  
  #This method allocate the location to the container
  def allocate
    container = params[:container]    
    locations = ContainerCrud.allocate(container) 
    render :json => locations    
  end
  
end
