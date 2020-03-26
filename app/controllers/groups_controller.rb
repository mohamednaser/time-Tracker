class GroupsController < ApplicationController
  before_action :signed_in?

  def index
    @groups = Group.all
  end

  def create
    @group = Group.new(post_params)

    if @group.save
      redirect_to groups_path, notice: 'Group was successfully created.'
    else
      redirect_to groups_new_path, alert: @group.errors.full_messages.join('. ').to_s
    end
  end

  def new
    @group = Group.new
  end

  def post_params
    params.require(:group).permit(:name, :icon)
  end
end
