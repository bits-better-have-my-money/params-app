class ParamsExamplesController < ApplicationController

  def query_params
    user_name = params["name"]
    user_message = params[:message]
    render json: {message: "The name is #{user_name}, and the message is #{user_message}"}
  end

end
