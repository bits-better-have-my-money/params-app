Rails.application.routes.draw do
  get "/query_params", controller: "params_examples", action: "query_params"
  get "/guess_game", controller: "params_examples", action: "guess_game"
end
