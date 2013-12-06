class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
    	t.text :title
    	t.text :description
    	t.integer :subcategory_id
    	t.string :type
      	t.timestamps
    end
  end
end
