module ApplicationHelper
  def order_belongs_to_logged_in_user?(logged_in_user, orders_user)
    # return true if logged_in_user == orders_user
    logged_in_user == orders_user
  end
end
