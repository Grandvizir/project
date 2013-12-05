class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name, :null => false, :default => ''
    	t.string :last_name, :null => false, :default => ''
    	t.text :mail, :null => false, :default => ''
    	t.text :password, :null => false, :default => ''
      	t.timestamps
    end
  end
end

