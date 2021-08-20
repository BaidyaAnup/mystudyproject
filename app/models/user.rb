class User < ApplicationRecord
	has_many :emergencies, class_name: 'Emergency'
	has_many :friends, class_name: 'Friend'


  def self.search(params)
  	if params[:first_name].present? && !params[:last_name].present?
    	@users = User.where("first_name LIKE ?", "%" + params[:first_name] + "%")
	elsif !params[:first_name].present? && params[:last_name].present?	
    	@users = User.where("last_name LIKE ?", "%" + params[:last_name] + "%")
    elsif params[:first_name].present? && params[:last_name].present?
    	@users = User.where("first_name LIKE ? AND last_name LIKE ?", "%" + params[:first_name] +"%", "%" + params[:last_name] + "%")
    else
    	@users = User.all
    end
  end
end
