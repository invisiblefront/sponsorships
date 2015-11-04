class CreateSubscriptionTypes < ActiveRecord::Migration
  def change
    create_table :subscription_types do |t|
      t.string :title 	
      t.timestamps null: false
    end
  end
end
