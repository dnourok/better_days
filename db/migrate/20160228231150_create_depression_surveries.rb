class CreateDepressionSurveries < ActiveRecord::Migration[5.0]
  def change
    create_table :depression_surveries do |t|
      t.integer :q_one
      t.integer :q_two
      t.integer :q_three
      t.integer :q_four
      t.integer :q_five
      t.integer :q_six
      t.integer :q_seven
      t.integer :q_eight
      t.integer :q_nine
      t.integer :q_ten
      t.integer :q_eleven
      t.integer :q_twelve
      t.integer :q_thirteen
      t.integer :q_fourteen
      t.integer :q_fifteen
      t.integer :q_sixteen
      t.integer :q_seventeen
      t.integer :q_eighteen
      t.integer :q_nineteen
      t.integer :q_twenty
      t.integer :q_twenty_one
      t.integer :total_points
      t.integer :user_id

      t.timestamps
    end
  end
end
