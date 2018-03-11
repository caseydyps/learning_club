class GroupsController < ApplicationController
  before_action :find_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = group.all     
  end 

  def new
    @group = group.new
  end

  def create
    @group = group.new(group_params)
  
    if @group.save 
      redirect_to groups_path  
    else               
      render :new               
    end
  end

  def update
    if @group.update(group_params)
      redirect_to groups_path, notice: "修改成功!"    
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_path, :alert => '已刪除'
  end

  private

  def find_group
    @group = group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end
end
