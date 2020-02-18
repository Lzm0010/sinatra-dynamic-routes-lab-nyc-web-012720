require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    reverse = params[:name].reverse
    "#{reverse}"
  end

  get '/square/:number' do
    square = params[:number].to_i ** 2
    "#{square.to_s}"
  end

  get '/say/:number/:phrase' do
    output = params[:phrase] * params[:number].to_i
    "#{output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    output = []
    params.each_pair do |key, value|
      output << value
    end
    "#{output.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      answer = params[:number1].to_i + params[:number2].to_i   
    when "subtract"
      answer = params[:number1].to_i - params[:number2].to_i  
    when "multiply"
      answer = params[:number1].to_i * params[:number2].to_i    
    when "divide"
      answer = params[:number1].to_i / params[:number2].to_i  
    else
      "Not a valid operation"
    end

    "#{answer}"
  end


end