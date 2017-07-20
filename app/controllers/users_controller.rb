class UsersController < ApplicationController
	before_action :redirect_unless_admin

  def index
  	@users = User.all
  end

  def update
  	raise params.inspect
  	# params[:user] => {user_id: 3, role: 'admin'}
  	user = User.find(params[:user_id])
  	user.update(role: params[:role])
  	flash[:success] = "#{user.email} changed to #{user.role}"
  	redirect_back(fallback_location: root_path)
  end
end
