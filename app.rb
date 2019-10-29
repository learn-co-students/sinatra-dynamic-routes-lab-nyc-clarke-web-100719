require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    answer = params[:number].to_i * params[:number].to_i
    answer.to_s
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase]} \n" * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
   case params[:operation]
   when "add"
    answer = params[:number1].to_i + params[:number2].to_i 
    answer.to_s
    when "subtract"
      answer = params[:number1].to_i - params[:number2].to_i 
    answer.to_s
    when "multiply"
      answer = params[:number1].to_i * params[:number2].to_i 
    answer.to_s
    when "divide"
      answer = params[:number1].to_i / params[:number2].to_i 
    answer.to_s
   end
  end
end