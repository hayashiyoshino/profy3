class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(updata_params)
  end

  private
  def updata_params
    params.require(:group).permit(:key, :detail)
  end

end
