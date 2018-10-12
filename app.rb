require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  get '/square/:number' do
    @x = params[:number].to_i * params[:number].to_i
    "#{@x}"
  end
  get '/say/:number/:phrase' do
    final_string = ''
     (params[:number].to_i).times{puts final_string += "#{params[:phrase]}"}
  
   final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    y = params[:number1].to_i
    z = params[:number2].to_i
    o = params[:operation]
      if o  == 'add'
        a = y + z
      elsif o == 'subtract'
        a = y - z
      elsif o == 'multiply'
        a = y * z
      elsif o == 'divide'
        a = y/z
      end
      a.to_s
  end


end
