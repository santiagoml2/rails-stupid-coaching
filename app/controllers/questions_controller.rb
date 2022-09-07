class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:questions]
    if @question == 'I am going to work'
      return @answer = 'Great!'
    elsif @question.match(/^'?'$/)
      # line above is breaking the code
      return @answer = 'Silly question, get dressed and go to work!'
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
