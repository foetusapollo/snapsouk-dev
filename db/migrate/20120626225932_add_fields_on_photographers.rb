class AddFieldsOnPhotographers < ActiveRecord::Migration
  def up
    add_column("photographers","location_id",:int)
    add_column("photographers", "project_type",:string)
    add_column("photographers","price_id",:int)
    add_column("photographers","rating_id",:int)
    add_index("photographers","location_id")
    add_index("photographers","price_id") 
    add_index("photographers","rating_id")      
  end

  def down
    remove_index("photographers","rating_id")
    remove_index("photographers","price_id") 
    remove_index("photographers","location_id")
    remove_column("photographers","rating_id")
    remove_column("photographers","price_id")
    remove_column("photographers", "project_type")
    remove_column("photographers","location_id")
  end
end
