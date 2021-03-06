class Activity < ActiveRecord::Base
   validates_presence_of :name
   validates_uniqueness_of :name

  attr_accessible :name

  has_many :role_activities
  has_many :user_activities
  has_many :ad_activities
end