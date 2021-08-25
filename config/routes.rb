Rails.application.routes.draw do
  get "/query_params", controller: "params_examples", action: "query_params"
end
