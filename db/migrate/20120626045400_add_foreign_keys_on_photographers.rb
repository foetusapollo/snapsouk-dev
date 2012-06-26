class AddForeignKeysOnPhotographers < ActiveRecord::Migration
    def up
    add_column("photographers","style_id", :integer)
    add_column("photographers","commission_id",:integer)
    add_index("photographers","style_id")
    add_index("photographers","commission_id")
    end

    def down
    remove_index("photographers","commission_id")
    remove_index("photographers","style_id")
    remove_column("photographers","commission_id")
    remove_column("photographers","style_id")
    end
  end
