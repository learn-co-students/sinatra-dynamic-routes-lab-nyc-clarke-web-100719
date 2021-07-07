require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do 
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do 
    @n = params[:number].to_i
    @phrase = params[:phrase]
      return @phrase * @n
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.map {|word, value| params[word]}
    @words.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do 
    #if statemnts for if the string equals "multiply" for all operations
    #then tell it what to do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @op == "multiply"
      "#{@num1 * @num2}"
    elsif @op == "subtract"
      "#{@num1 - @num2}"
    elsif @op == "add"
      "#{@num1 + @num2}"
    elsif @op == "divide"
      "#{@num1 / @num2}"
    end

  end

end