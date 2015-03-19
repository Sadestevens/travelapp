# require 'google_auth'

Rails.application.config.middleware.use OmniAuth::Builder do
  def google_oauth2_options
    {
      scope: 'https://www.googleapis.com/auth/userinfo.profile, https://www.googleapis.com/auth/userinfo.email, https://mail.google.com/, https://www.googleapis.com/auth/admin.directory.user.readonly',
      prompt: 'select_account consent',
      access_type: 'offline'
    }
  end

  provider :google_auth, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], google_oauth2_options
end
