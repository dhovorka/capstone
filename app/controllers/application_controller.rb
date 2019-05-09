class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_user
    auth_headers = request.headers['Authorization']
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: 'HS256' }
        )
        User.find_by(id: decoded_token[0]["user_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  def authenticate_admin
    unless current_user && current_user.admin
      render json: {}, status: :unauthorized
    end
  end

  helper_method :current_user

  def authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
    end
  end

  def reply
    account_sid = ENV["TWIL_ACCOUNT_SID"]
    auth_token = ENV["TWIL_AUTH_TOKEN"]
    from_number = ENV["TWIL_NUMBER"]
    boot_twilio = ENV["NUM_NUM"]
    @client = Twilio::REST::Client.new account_sid, auth_token
    sms = @client.messages.create(
      from: from_number,
      to: boot_twilio,
      body: "Hey there #{current_user.first_name}! A new comment was added to Tennis|Findr, have a look and start planning your trip!"
    )
  end
end