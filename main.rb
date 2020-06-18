require "sinatra"
require "sinatra/reloader"

get '/' do
    erb(:homepage)
end

get "/bottle" do
    num = params['num'].to_i
    if num > 0
        erb(:beers, locals: {
            num1: num,
            num2: num - 1
        })
    else
        erb(:end)
    end
end