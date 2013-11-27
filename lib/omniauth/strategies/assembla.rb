require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Assembla < OmniAuth::Strategies::OAuth2

      option :client_options, {
                 site: "https://api.assembla.com",
        authorize_url: "/authorization",
            token_url: "/token",
      }

      option :name, "assembla"

      def request_phase
        super
      end

      def build_access_token
        token_params = {
                   code: request.params["code"],
           redirect_uri: callback_url,
              client_id: client.id,
          client_secret: client.secret,
             grant_type: "authorization_code",
        }
        client.get_token(token_params)
      end

      uid { raw_info.parsed['id'] }

      info do
        {
          'email' => raw_info.parsed["email"],
           'name' => raw_info.parsed["name"],
        }
      end

      extra do
        {
             'login' => raw_info.parsed["login"],
          'raw_info' => raw_info.parsed,
        }
      end

      def raw_info
        access_token.options[:parse] = :json
        @raw_info ||= access_token.get("/v1/user.json")
      end

    end
  end
end
