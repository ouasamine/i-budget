class GroupsController < ApplicationController
  before_action :require_login
  def index
    @groups = Group.where(user: current_user)
  end

  def new
    @new_group = Group.new
  end

  def create
    @new_group = Group.new(group_params)

    return unless @new_group.save

    flash[:success] = 'Category created successfully.'
    redirect_to groups_path
  end

  def destroy
    @group = Group.find(params[:id])

    return unless @group.destroy

    flash[:success] = 'Category deleted successfully.'
    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
