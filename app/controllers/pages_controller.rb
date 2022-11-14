class PagesController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    if @query.downcase == "i am going to work right now!"
      @answer = "great"
    elsif @query.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
