class Sponsor < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true       
  validates :subscription_type_id, presence: true   
  
  has_one :subscription_type

  has_many :project_sponsorships
  has_many :projects, :through => :project_sponsorships

  accepts_nested_attributes_for :project_sponsorships
  accepts_nested_attributes_for :projects

  attr_accessor :project_id

  after_create :associate_project

  private
    def associate_project
      # puts "------------------------------------------------- OK ------------------------------------------------"
      # puts self.id
      # puts self.project_id

        p=ProjectSponsorship.new
        p.sponsor_id=self.id
        p.project_id=self.project_id
        p.save!
    end


end
