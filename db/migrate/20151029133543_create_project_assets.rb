class CreateProjectAssets < ActiveRecord::Migration
  def change
    create_table :project_assets do |t|
      t.integer :project_id
      t.integer :subscription_type_id
      t.string :title
      t.string :media_type
      t.string :media
      t.timestamps null: false
    end
  end
end
