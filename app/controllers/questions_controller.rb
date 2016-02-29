class QuestionsController < ApplicationController
  def index
  end

  def create
  end

  def show
  end

  def new
    @survey = Question.new
  end

  def edit
  end

  def create
    @survey = Question.new(survey_params)
  end

  def survey_params
    params.require(:questions).permit(:q_one,:q_two,:q_three)
  end

  def destroy
  end

end


 




 



  # def new
  #   @survey = DepressionQuestion.new
  # end

  # def create
  #   @survey = DepressionQuestion.new(survey_params)
    

  #   if @survey.save
  #     // redirect to "Thank you for filling out the form"
  #   else
  #     // rerender
  #   end
  # end

  # def survey_params
  #   params.require(:depression_survey).permit(:q_one,:q_two,:q_three)
  # end

