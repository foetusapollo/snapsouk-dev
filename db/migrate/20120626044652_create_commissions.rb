class CreateCommissions < ActiveRecord::Migration
    def change
      create_table :commissions do |t|
  	  t.integer "commission_value"
        t.timestamps
      end
    end
  end
