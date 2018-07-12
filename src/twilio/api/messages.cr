module Twilio
  class Client
    def messages_create(from, to, message)
      response = @http_client.post("/2010-04-01/Accounts/#{@account_sid}/Messages.json", form: {
        "To"   => to,
        "From" => from,
        "Body" => message
      })

      Twilio::Mapping::Messages.from_json(handle_response(response))
    end
  end
end