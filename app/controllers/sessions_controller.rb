class SessionsController < ApplicationController
  before_action :require_current_user, only: :destroy

  def new
    @user = User.new
  end

  def create
    # @auth = request.env['omniauth.auth']['credentials']
    # Token.create(
    #   access_token: @auth['token'],
    #   refresh_token: @auth['refresh_token'],
    #   expires_at: Time.at(@auth['expires_at']).to_datetime)

    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      login!(@user)
      redirect_to '/'
    else
      redirect_to new_session_url
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end

  private

  def session_params
    @session_params ||= params.require(:session).permit(:email, :password)
  end

end
