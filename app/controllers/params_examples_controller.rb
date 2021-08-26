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
    winning_number = 36
    input_guess = params[:guess].to_i
    if input_guess < winning_number
      message = "Too low!"
    elsif input_guess > winning_number
      message = "Too high!"      
    else
      message = "You win!"
    end
    render json: {message: message}
  end

  def url_segment_params
    user_input = params[:wildcard]
    render json: {message: "The key name is wildcard and the value is #{user_input}"}
  end

  def body_params
    user_input = params[:secret_info]
    render json: {message: "The secret info is #{user_input}"}
  end

  def credentials
    message = "Your credentials are invalid!"
    username = params[:username]
    password = params[:password]
    if username == "hugh" && password == "swordfish"
      message = "Your credentials are valid!"
    end
    render json: {message: message}
  end

end
