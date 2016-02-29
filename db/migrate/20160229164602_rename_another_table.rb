class RenameAnotherTable < ActiveRecord::Migration[5.0]
  def change
  	rename_table :depression_questions, :questions
  end
end
