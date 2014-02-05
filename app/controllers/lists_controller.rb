class ListsController < ApplicationController
	#  Create an index action in the ListsController
	def index
		@lists = List.all
	end

	# Form for creating a list
	def new
		@list = List.new
	end

	def create
		@list = List.new(list_params)
    
   		if @list.save
      		redirect_to lists_url
    	else
      		render action: "new"
    	end
	end

  # Edit the form
  def edit
      @list = List.find(params[:id])
  end
 
  # Update the form
  def update
    @list = List.find(params[:id])
 
    if @list.update_attributes(list_params) # instead of params[:list], use permitted attributes
        redirect_to lists_path
    else
      render action: "edit"
    end
  end

  # View each bucket list separately on its own page
  def show
    @list = List.find(params[:id])
  end

  # Delete each item on a list
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_url
  end

# Private method used to encapsulate the permissible parameters
private
	def list_params
		params.require(:list).permit(:task, :description, :step)
  end
end
