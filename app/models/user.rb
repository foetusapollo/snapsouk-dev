class AdminUser < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :username, :email, :style_id
  
  scope :style_id, where(:style_id => 1)
  
  # To configure a different table name with a legacy DB
  # set_table_name("admin_users")
  
end
