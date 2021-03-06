class City < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  attr_accessible :name

  has_many :users
  has_many :ads
end
