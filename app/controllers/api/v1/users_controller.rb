class Api::V1::UsersController < ApplicationController
  def start
    return unless request.content_type == 'application/json'
    return unless request['message'] == 'start'

    msg = { message: 'welcome' }
    render json: msg, status: :ok
  end
end
