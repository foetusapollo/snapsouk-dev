class CreateReviews < ActiveRecord::Migration
    def change
      create_table :reviews do |t|
  	  t.datetime "review_date"
  	  t.integer "review_score"
  	  t.text "review_text"
        t.timestamps
      end
    end
  end