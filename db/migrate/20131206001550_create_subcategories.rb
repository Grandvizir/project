class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
    	t.integer :category_id, :null => false, :default => 0
    	t.string :name, :null => false, :default => 0
      	t.timestamps
    end
  end
end
