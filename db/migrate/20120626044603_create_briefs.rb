class CreateBriefs < ActiveRecord::Migration
  def change
    create_table :briefs do |t|

      t.timestamps
    end
  end
end
