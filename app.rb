require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num**2).to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    @phrase = params[:phrase]
    @return = ""
    num.times do
      @return.concat(@phrase)
    end
    @return
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.map {|word, value| params[word]}
    @words.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    if @operation == "add"
      (@num1 + @num2).to_s
    elsif @operation == "subtract"
      (@num1 - @num2).to_s
    elsif @operation == "multiply"
      (@num1 * @num2).to_s
    elsif @operation == "divide"
      (@num1/@num2).to_s
    end
  end
end