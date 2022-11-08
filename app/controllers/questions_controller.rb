class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @reply1 = "Great!"
    @reply2 = "Silly question, get dressed and go to work!"
    @reply3 = "I don't care, get dressed and go to work!"

    @reply =
      if params[:question] == "I am going to work right now!"
        @reply1
      elsif params[:question].include?("?")
        @reply2
      else
        @reply3
      end
  end
end
