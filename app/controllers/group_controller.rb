# frozen_string_literal: true

class GroupController < ApplicationController
  def index
    @groups = Group.all
  end

  def create
    @group = Group.new(post_params)

    if @group.save
      redirect_to group_index_path, notice: 'Group was successfully created.'
    else
      redirect_to group_new_path, alert: @group.errors.full_messages.join('. ').to_s
    end
  end

  def new
    @group = Group.new
  end

  def post_params
    params.require(:group).permit(:name, :icon)
  end
end
