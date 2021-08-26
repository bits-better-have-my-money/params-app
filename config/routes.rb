Rails.application.routes.draw do
  # query params
  get "/query_params", controller: "params_examples", action: "query_params"
  get "/guess_game", controller: "params_examples", action: "guess_game"
  # url segment params
  get "/url_segment_params/:wildcard", controller: "params_examples", action: "url_segment_params"
  get "/guess_game/:guess", controller: "params_examples", action: "guess_game"
  # body params
  post "/body_params", controller: "params_examples", action: "body_params"
  post "/guess_game", controller: "params_examples", action: "guess_game"

  post "/credentials" => "params_examples#credentials"
end

# web request
# GET "/route"
# headers
# body

# web response
# status code
# headers
# body (which has the actual data)