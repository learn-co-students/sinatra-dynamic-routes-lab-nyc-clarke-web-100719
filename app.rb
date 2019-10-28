require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    name = name.reverse
    "#{name}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    num **= 2
    num.to_s
  end
  
  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase] 
    phrase * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      answer = params[:number1].to_i + params[:number2].to_i
      answer.to_s
    when 'subtract'
      answer = params[:number1].to_i - params[:number2].to_i
      answer.to_s
    when 'multiply'
      answer = params[:number1].to_i * params[:number2].to_i
      answer.to_s
    when 'divide'
      answer = params[:number1].to_i / params[:number2].to_i
      answer.to_s
    end
  end
end
