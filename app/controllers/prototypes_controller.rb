class PrototypesController < ApplicationController
  def index 
  end
  
  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(ptototype_params)
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private
 
  def prototype_params
    params.require(:prototype).permit(:user_id, :title, :catch_copy, :concept).merge(user_id: current_user.id)
  end
end
