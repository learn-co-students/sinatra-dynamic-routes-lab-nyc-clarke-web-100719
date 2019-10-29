require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do

    name = params[:name]

    @name = name.reverse

    erb :reverse
  end

  get '/square/:number' do


    num = params[:number].to_i

    @num = num*num

    erb :square

  end

  get '/say/:number/:phrase' do

    numTimes = params[:number].to_i

    phrase = params[:phrase]
    @string = ""

    numTimes.times do
    @string.concat(phrase)
    end
    erb :say
  end


  get '/say/:w1/:w2/:w3/:w4/:w5' do

    @string = "#{params[:w1]} #{params[:w2]} #{params[:w3]} #{params[:w4]} #{params[:w5]}."


    erb :say
  end

  get '/:operation/:n1/:n2' do

    op = params[:operation]

    op = operationHash[op]

    num1 = params[:n1].to_f
    num2 = params[:n2].to_f

    @answer = num1.method(op).(num2)

    erb :operation
  end

  def operationHash
    {
      "add" => "+",
      "subtract" => "-",
      "multiply" => "*",
      "divide" => "/"
    }
  end









end