class ParamsExamplesController < ApplicationController

  def query_params
    user_name = params["name"].upcase
    if user_name.starts_with?("A")
      message = "Hey, your name starts with the first letter of the alphabet!"
    else
      message = "Your name is #{user_name}"
    end
    render json: {message: message}
  end

  def guess_game
    input_guess = params[:guess]
    render json: {message: "You guessed #{input_guess}"}
  end

end
