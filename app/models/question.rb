class Question < ApplicationRecord
	belongs_to :user
	validates :q_one, :q_two, :q_three, :q_four, :q_five, presence: true
	# validates :q_six, :q_seven, :q_eight, :q_nine, :q_ten, presence: true
	# validates :q_eleven, :q_twelve, :q_thirteen, :q_fourteen, presence: true
	# validates :q_fifteen, :q_sixteen, :q_seventeen, :q_eighteen, :q_nineteen, :q_twenty, :q_twenty_one, presence: true
  
  # validates checks to make sure all of the boxes have been checked

# need this later on
	def total_points
		self[:total_points] ||= [q_one, q_two, q_three, q_four, q_five, q_six, q_seven, q_eight, q_nine, q_ten, q_eleven, q_twelve, q_thirteen, q_fourteen, q_fifteen, q_sixteen, q_seventeen, q_eighteen, q_nineteen, q_twenty, q_twenty_one].reduce(:+)
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