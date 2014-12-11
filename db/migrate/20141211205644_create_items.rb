class CreateItems < ActiveRecord::Migration
  def change
  	create_table :items do |t|
  		t.string :title, null: false
  		t.text :desc, default: ""
  		t.boolean :is_done, default: false
  		t.timestamps
  	end
  end
end
