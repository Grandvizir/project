class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
    	t.text :description
    	t.text :title
    	t.integer :user_id
    	t.integer :power
      	t.timestamps
    end
  end
end
