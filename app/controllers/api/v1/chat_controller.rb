class Api::V1::ChatController < ApplicationController

  def message
    preparation_question = PreparationFactory.create(params[:errand], field: params[:field], answer: params[:answer])
    render json: preparation_question.to_json
  end
end
