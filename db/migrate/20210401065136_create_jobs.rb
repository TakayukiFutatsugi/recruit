class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title
      t.integer :status
      t.string :annualSalary
      t.string :programmingLanguage
      t.string :skillset
      t.string :benefitProgram
      t.string :holiday
      t.string :desiredCharacteristics
      t.string :selectionProcess
      t.date :startingDate
      t.integer :workplace
      t.string :access
      t.text :description
      t.string :corporateName
      t.string :corporateUrl
      t.string :industry
      t.string :address
      t.text :introduction

      t.timestamps
    end
  end
end
