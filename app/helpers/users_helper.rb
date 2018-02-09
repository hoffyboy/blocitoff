module UsersHelper
  def active(user)
    if user.items.any?
      time_ago_in_words(user.items.last.created_at)
    elsif user.last_sign_in_at
      time_ago_in_words(user.last_sign_in_at)
    else
      time_ago_in_words(user.created_at)
    end
  end
end
