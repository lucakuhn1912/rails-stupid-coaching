class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @input = params["question"]
    if @input == "I am going to work"
      @coach = "Great"
    elsif @input.end_with?("?")
      @coach = "Silly question, get dressed and go to work!"
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end

end
