class CreateUserSubcats < ActiveRecord::Migration
  def change
    create_table :user_subcats do |t|
    	t.integer :user_id, :null => false, :default => 0
    	t.integer :subcategory_id, :null => false, :default => 0
      	t.timestamps
    end
  end
end
