class Api::V1::ChatController < ApplicationController

  def message 
    answer = params[:answer]
    response = client.message(answer)
    currency_type = response['entities']['currency'].first['value']
    render json: {currency_type: currency_type}
  end

  private
    def client
      Wit.new(access_token: ENV['wit_token'])
    end

end
