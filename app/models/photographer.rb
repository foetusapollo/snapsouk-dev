class Photographer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email_address, :phone_number, :style_id
end
