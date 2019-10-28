require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = ""
    params.each {|param, name| @sentence << " " + name }
    "#{@sentence.strip}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    if @operation == "add"
      @total = params[:number1].to_i + params[:number2].to_i
    elsif @operation == "subtract"
      @total = params[:number1].to_i - params[:number2].to_i
    elsif @operation == "multiply"
      @total = params[:number1].to_i * params[:number2].to_i
    elsif @operation == "divide"
      @total = params[:number1].to_i / params[:number2].to_i
    end
    "#{@total}"
  end
end