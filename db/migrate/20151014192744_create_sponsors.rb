class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name,     null: false	  	
      t.integer :subscription_type_id

      t.timestamps null: false
    end
  end
end
