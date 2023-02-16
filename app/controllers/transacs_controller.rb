class TransacsController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @group_transacs = Transac.where(group: @group).order(created_at: :desc)
  end

  def new
    @new_transac = Transac.new
    @user_groups = Group.where(user: current_user)
  end

  def create
    @new_transac = Transac.new(transac_params)

    if @new_transac.save
      flash[:success] = "Transaction created successfully."
      redirect_to group_transacs_path(transac_params[:group_id])
    end
  end

  private

  def transac_params
    params.require(:transac).permit(:name, :amount, :author_id, :group_id)
  end
end
