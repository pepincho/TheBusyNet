class ItsController < ApplicationController
  def index
   
    @its = User.where(role_id: Role.find_by_name('IT').id)
    @cities = City.all
    @activities = Activity.all
   
    @its = @its.joins(ads: :ad_activities).where('ad_activities.actitvity_id = ?', params[:activity_id]) if params[:activity_id].present?
    @its = @its.where(city_id: params[:city_id]) if params[:city_id].present?
    
  end
end