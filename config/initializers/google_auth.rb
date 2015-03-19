module OmniAuth
  module Strategies
    class GoogleAuth < OmniAuth::Strategies::GoogleOauth2
      option :name, 'google_auth'
      option :callback_path, '/callbacks/google'
    end
  end
end
