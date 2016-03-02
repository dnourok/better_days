class Question < ApplicationRecord
	attr_accessor :step

	belongs_to :user
	validates :q_one, :q_two, :q_three, :q_four, :q_five, presence: true
	validates :q_six, :q_seven, :q_eight, :q_nine, :q_ten, presence: true, if: -> { step == 'secondq_page' }
	validates :q_eleven, :q_twelve, :q_thirteen, :q_fourteen, :q_fifteen, presence: true, if: -> { step == 'thirdq_page' }
	validates :q_sixteen, :q_seventeen, :q_eighteen, :q_nineteen, :q_twenty, :q_twenty_one, presence: true, if: -> { step == 'fourthq_page' }
  
  # validates checks to make sure all of the boxes have been checked

# need this later on
	before_save do
		unless [q_one, q_two, q_three, q_four, q_five, q_six, q_seven, q_eight, q_nine, q_ten, q_eleven, q_twelve, q_thirteen, q_fourteen, q_fifteen, q_sixteen, q_seventeen, q_eighteen, q_nineteen, q_twenty, q_twenty_one].include?(nil)
			self.total_points = [q_one, q_two, q_three, q_four, q_five, q_six, q_seven, q_eight, q_nine, q_ten, q_eleven, q_twelve, q_thirteen, q_fourteen, q_fifteen, q_sixteen, q_seventeen, q_eighteen, q_nineteen, q_twenty, q_twenty_one].reduce(:+)
		end
	end

	# after_save do
	# 	if self.total_points 
			# greater than whatver
			# can do the redirect here?
			# or on_save

	# 	end
	# end 

	# def getHelp
	# 	if self.total_points == 100
	# 		return 
	# 	end
	# end



end

# before_save is a built in method in rails
# self.total_points is saving to itself in the database column total_points