class CreatePhotographers < ActiveRecord::Migration
    def change
      create_table :photographers do |t|
  	  t.string "first_name",:limit=>25
  	  t.string "last_name",:limit=>25
  	  t.string "phone_number",:limit=>11
  	  t.string "email_address",:limit=>25
  	  t.string "website_url",:limit=>25
        t.timestamps
      end
    end
  end
