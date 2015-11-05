class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title,              null: false
      t.string :description     
      t.string :banner
      t.integer :organizer_id             
      t.timestamps null: false
    end
  end
end
