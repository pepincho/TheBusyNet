class AdActivity < ActiveRecord::Base
  attr_accessible :actitvity_id, :ad_id

  belongs_to :ad
  belongs_to :activity
end

