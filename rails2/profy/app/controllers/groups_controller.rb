class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
  end
  
  def edit
    @group = Group.find(params[:id])
  end
  
  def update
    @group = Group.find(params[:id])
    @group.update(update_params)
    
   if @group.present?
     redirect_to group_path(current_user.group), notice: 'グループ情報を更新しました。'
   end
  end
  
  private
   def update_params
     params.require(:group).permit(:key, :detail)
   end 
end
