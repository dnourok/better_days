class Question < ApplicationRecord
	validates :q_one, :q_two, :q_three, :q_four, :q_five, :q_six, :q_seven, :q_eight, :q_nine, :q_ten, :q_eleven, :q_twelve, :q_thirteen, :q_fourteen, :q_fifteen, :q_sixteen, :q_seventeen, :q_eighteen, :q_nineteen, :q_twenty, :q_twenty_one, presence: true
  
  # validates checks to make sure all of the boxes have been checked

	before_save do
		self.total_points = [q_one, q_two, q_three, q_four, q_five, q_six, q_seven, q_eight, q_nine, q_ten, q_eleven, q_twelve, q_thirteen, q_fourteen, q_fifteen, q_sixteen, q_seventeen, q_eighteen, q_nineteen, q_twenty, q_twenty_one].reduce(:+)
	end

end

# before_save is a built in method in rails
# self.total_points is saving to itself in the database column total_points