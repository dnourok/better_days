class RenameOldTable < ActiveRecord::Migration[5.0]
  def change
  	rename_table :depression_surveries, :depression_questions
  end
end
