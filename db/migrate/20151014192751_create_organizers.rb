class CreateOrganizers < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.string :name,              null: false	
      t.timestamps null: false
    end
  end
end
