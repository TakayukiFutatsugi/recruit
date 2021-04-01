class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @entries = Entry.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end
  
  private
    def user_params
      params.require(:job).permit(:email, :password, :familyName, :lastName, :familyNameDetail, :lastNameDetail, :gender, :birthdate, :location, :education, :career, :reason, :strongPoint, :weakPoint, :goal, :learningResource, :informationResource, :programmingLanguage, :portfolio, :futureProduct, :introduction, :workplace, :annualSalary, :startingDate)
    end
end
