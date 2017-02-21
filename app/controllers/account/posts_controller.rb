class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end
def edit
  @group = Group.find(params[:id])
  if current_user != @group.user
    redirect_to root_path, alert:'You have no permission'
  end
end

end
