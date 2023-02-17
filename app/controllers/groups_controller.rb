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

    if @new_group.save
      flash[:success] = "Category created successfully."
      redirect_to groups_path
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
