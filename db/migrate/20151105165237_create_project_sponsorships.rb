class CreateProjectSponsorships < ActiveRecord::Migration
  def change
    create_table :project_sponsorships do |t|
      t.belongs_to :project
      t.belongs_to :sponsor
      t.timestamps null: false
    end
  end
end
