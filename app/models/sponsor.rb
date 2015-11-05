class Sponsor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true       
  validates :subscription_type_id, presence: true   
  
  has_and_belongs_to_many :projects
  has_one :subscription_type
end
