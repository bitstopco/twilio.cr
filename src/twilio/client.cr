module Twilio
  class Client
    Host = "api.twilio.com"

    property account_sid : String
    property auth_token : String

    def initialize(@account_sid, @auth_token)
      @http_client = HTTP::Client.new(Host, tls: true)
      @http_client.basic_auth(@account_sid, @auth_token)
    end

    private def handle_response(response : HTTP::Client::Response)
      case response.status_code
      when 200..299
        response.body
      when 400..499
        message = Twilio::Error::Mapping.from_json(response.body).message
        raise Twilio::Error.new(message)
      when 500
        raise Twilio::Error.new("Internal Server Error")
      when 502
        raise Twilio::Error.new("Bad Gateway")
      when 503
        raise Twilio::Error.new("Service Unavailable")
      when 504
        raise Twilio::Error.new("Gateway Timeout")
      else
        ""
      end
    end
  end
end