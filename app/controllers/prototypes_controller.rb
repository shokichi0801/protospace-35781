class PrototypesController < ApplicationController
  def index 
  end
  
  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(ptototype_params)
  end

  private
  def prototype_params
    params.require(:prototype).permit(:user_id)
end
