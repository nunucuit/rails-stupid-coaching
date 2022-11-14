class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:answer]
      if params[:answer].end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      elsif params[:answer].end_with("!")
        @answer = "I don't care, get dressed and go to work!"
      elsif params[:answer] == "i am going to work right now!"
        @answer = "Great!"
      end
    end
  end
end

# def answer
#   answer = coach_answer(your_message)
# if  params[:answer] != ""
#   if params[:answer].upcase == your_message
#     "I can feel your motivation! #{answer}"
#   else
#     [:answer]
#   end
# else
#   ""
# end
# end
# end
