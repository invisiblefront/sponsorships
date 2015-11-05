class Sponsor < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true       
  validates :subscription_type_id, presence: true   
  
  has_one :subscription_type

  has_many :projects, :through => :project_sponsorships

end
