class CreateProjectsSponsorsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :projects_users, :id => false do |t|
      t.integer :project_id
      t.integer :sponsor_id
    end

    add_index :projects_users, [:project_id, :sponsor_id]
  end

  def self.down
    drop_table :projects_users
  end
end


# User.categories  #=> [<Category @name="Sports">, ...]
# Category.users   #=> [<User @name="UserA">, ...]
# User.categories.empty?