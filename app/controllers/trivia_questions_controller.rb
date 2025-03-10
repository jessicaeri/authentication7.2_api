class TriviaQuestionsController < ApplicationController
  def show
    require 'httparty' #gem install httparty

    response = HTTParty.get('https://opentdb.com/api.php?amount=1')
    data = response.parsed_response

    question = data['results']

    question.each_with_index do |trivia, index|
      # puts trivia #shows what the data looks like
      puts "The category is: #{trivia['category']}"
      puts "#{trivia['question']}"
      
      # sleep(8)
      puts "\n"
      puts "----------------------------------------------"
      puts "The correct answer is: #{trivia['correct_answer']}"
     
    end

    render json: question
  end
end
