module V1
  class GreetingsController < ApplicationController
    def index
      p random_greeting
      render json: {
        greetings: [
          {
            message: random_greeting
          }
        ]
      }.to_json
    end

    private

    def random_greeting
      random_offset = rand(Greeting.count)
      random_greeting = Greeting.offset(random_offset).first
      random_greeting.message
    end
  end
end
