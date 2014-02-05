class StepsController < ApplicationController
  #Add steps from the site
  def create
    @list = List.find(params[:list_id])
    @step = @list.steps.new(step_params)
      if @step.save
      	redirect_to list_url(@list)
      else
      	redirect_to list_url(@list)
      end
  end

  # Mark steps as complete
  def complete
  	@list = List.find(params[:list_id])
  	@step = Step.find(params[:id])
  	@step.completed = true
  	@step.save
  	redirect_to list_url(@list)
  end

  # Delete completed steps
  def destroy
  	@list = List.find(params[:list_id])
  	@step = Step.find(params[:id])
  	@step.destroy
  	redirect_to list_url(@list)
  end

# Private method used to encapsulate the permissible parameters
private
  def step_params
    params.require(:step).permit(:description, :completed, :list_id)
  end
end