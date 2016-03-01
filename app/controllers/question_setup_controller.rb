class QuestionSetupController < ApplicationController
	include Wicked::Wizard

	steps :firstq_page, :secondq_page, :thirdq_page, :fourthq_page

def show
    @survey = Question.new(user: current_user)
    render_wizard
end

def update
        @survey = current_user.questions.first_or_initialize(question_params)
        # should maybe be a save here and not a create since the user will have already been created
        # in this step with a session
        case step
        when :firstq_page
        @survey.update(question_params)
        render_wizard
        when :secondq_page
        @survey.update(question_params)
        render_wizard
        when :thirdq_page
        @survey.update(question_params)
        render_wizard
        when :fourthq_page
        @survey.update(question_params)
        redirect_to 'http://www.google.com'
            # if @survey.total_points > 10
        end
    end
end

def question_params
    params.require(:question).permit(:q_one, :q_two, :q_three, :q_four, :q_five, :q_six, :q_seven, :q_eight, :q_nine, :q_ten, :q_eleven, :q_twelve, :q_thirteen, :q_fourteen, :q_fifteen, :q_sixteen, :q_seventeen, :q_eighteen, :q_nineteen, :q_twenty, :q_twenty_one)
end

# i need to use foreign key to connect users and questions
# need to add another wizard path at the endof the first page up until the last 
# and the last submits it to the database
# to get to the next page of questions need to put next_wizard_path
# might need to change where the post method is

