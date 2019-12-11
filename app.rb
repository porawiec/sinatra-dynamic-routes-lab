require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.chars.reverse.join
  end

  get '/square/:number' do
    @num = params[:number]
    square = @num.to_i ** 2
    square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    rep_str = ""
    @number.to_i.times {rep_str += @phrase}
    rep_str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_arr = []
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word_arr.push(@word1, @word2, @word3, @word4, @word5)
    "#{@word_arr.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @numb1 = params[:number1].to_i
    @numb2 = params[:number2].to_i
    
    case @op

    when "add"
      result = (@numb1 + @numb2).to_s
    when "subtract"
      result = (@numb1 - @numb2).to_s
    when "multiply"
      result = (@numb1 * @numb2).to_s
    when "divide"
      result = (@numb1 / @numb2).to_s
    end
  
  end

end