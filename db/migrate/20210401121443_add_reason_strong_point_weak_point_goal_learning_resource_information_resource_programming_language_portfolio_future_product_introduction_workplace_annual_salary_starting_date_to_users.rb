class AddReasonStrongPointWeakPointGoalLearningResourceInformationResourceProgrammingLanguagePortfolioFutureProductIntroductionWorkplaceAnnualSalaryStartingDateToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :reason, :string
    add_column :users, :strongPoint, :string
    add_column :users, :weakPoint, :string
    add_column :users, :goal, :string
    add_column :users, :learningResource, :string
    add_column :users, :informationResource, :string
    add_column :users, :programmingLanguage, :string
    add_column :users, :portfolio, :text
    add_column :users, :futureProduct, :string
    add_column :users, :introduction, :text
    add_column :users, :workplace, :integer
    add_column :users, :annualSalary, :string
    add_column :users, :startingDate, :date
  end
end
