class AdminUser < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :username, :email, :style_id
  
  # How to create a named scope (a saved query)
  
  scope :andrew, where(:first_name => "Andrew")
  
  #example of a search query using escaped syntax for security
  scope :search, lambda {|query| where(["first_name LIKE ?", "%#{query}%"])}
  scope :named, lambda {|first,last| where(:first_name => first, :last_name => last)}
  # To configure a different table name with a legacy DB
  # set_table_name("admin_users")
  
end
