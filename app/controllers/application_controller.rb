class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:familyName, :lastName, :familyNameDetail, :lastNameDetail, :gender, :birthdate, :location])
    devise_parameter_sanitizer.permit(:account_update, keys: [:familyName, :lastName, :familyNameDetail, :lastNameDetail, :gender, :birthdate, :location, :education, :career, :reason, :strongPoint, :weakPoint, :goal, :learningResource, :informationResource, :programmingLanguage, :portfolio, :futureProduct, :introduction, :workplace, :annualSalary, :startingDate])
  end
end
