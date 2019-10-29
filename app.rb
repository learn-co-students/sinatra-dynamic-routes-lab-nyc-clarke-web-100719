require_relative 'config/environment'

# require 'pry'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do
    # @user_name = params[:name]
    # @user_name.reverse
    params[:name].reverse
  end

  get '/square/:number' do
    @val = params[:number].to_i * params[:number].to_i
    "#{@val}"
  end

  get '/say/:number/:phrase' do
    @num_of_iterations = params[:number].to_i
    phrase = params[:phrase]
    @phrase = []
    @num_of_iterations.times {@phrase << phrase}

    return @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word = []
    1.upto(params.length) {|i| @word << params["word#{i}"] }
    @word.join(' ') << "."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case operation
    when "add"
      @ans = num1 + num2
    when "subtract"
      @ans = num1 - num2
    when "multiply"
      @ans = num1 * num2
    when "divide"
      @ans = num1 / num2
    end

    "#{@ans}"
  end
end