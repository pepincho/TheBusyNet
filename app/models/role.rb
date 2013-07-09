class Role < ActiveRecord::Base
  attr_accessible :accountast, :searcher, :softwareEngineer, :teacher

  has_many :role_activities
  has_many :users
end