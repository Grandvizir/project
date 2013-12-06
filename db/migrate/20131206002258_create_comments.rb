class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.integer :search_id
    	t.text :comment
    	t.integer :user_id
    	t.integer :power
      	t.timestamps
    end
  end
end
