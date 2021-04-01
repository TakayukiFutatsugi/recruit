class AddFamilyNameLastNameFamilyNameDetailLastNameDetailGenderBirthdateLocationEducationCareerToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :familyName, :string
    add_column :users, :lastName, :string
    add_column :users, :familyNameDetail, :string
    add_column :users, :lastNameDetail, :string
    add_column :users, :gender, :integer
    add_column :users, :birthdate, :date
    add_column :users, :location, :integer
    add_column :users, :education, :string
    add_column :users, :career, :string
  end
end
