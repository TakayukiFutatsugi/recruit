class JobsController < ApplicationController
before_action :authenticate_user!, only: [:show, :new, :create, :efit, :update, :destroy]
  
  def index
    @jobs = Job.all.order(id: "DESC")
  end

  def show
    @job = Job.find_by(id: params[:id])
  end

  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
      flash[:notice] = "投稿しました"
    else
      flash[:alert] = "Save error"
      render :new
    end  
  end

  def edit
    @job = Job.find_by(id: params[:id])
  end
  
  def update
    @job = Job.find_by(id: params[:id])
    if @job.update(job_params)
      redirect_to jobs_path
      flash[:notice] = "投稿しました"
    else
      flash[:alert] = "Save error"
      render :edit
    end  
  end
  
  def destroy
    @job = Job.find_by(id: params[:id])
    if @job.user == current_user
      flash[:notice] = "削除しました" if @job.destroy
    else
      flash[:alert] = "Save error"
    end
    redirect_to jobs_path
  end
  
  private
    def job_params
      params.require(:job).permit(:title, :description, :status, :annualSalary, :programmingLanguage, :skillset, :benefitProgram, :holiday, :desiredCharacteristics, :selectionProcess, :startingDate, :workplace, :access, :corporateName, :corporateUrl, :industry, :address, :introduction).merge(user_id: current_user.id)
    end
end
