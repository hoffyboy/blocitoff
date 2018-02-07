class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(users)

    user_path(current_user.id)

  end

  def check_for_expired_todos
    Item.where("created_at <= ?", Time.now - 7.days).destroy_all
  end
end
