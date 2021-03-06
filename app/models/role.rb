class Role < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  attr_accessible :name

  has_many :role_activities
  has_many :activities, through: :role_activities
  has_many :users
end
