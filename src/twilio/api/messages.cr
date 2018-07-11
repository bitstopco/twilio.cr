module Twilio
  class Client
    def messages_create(to, from, body)
      response = @http_client.post("/2010-04-01/Accounts/#{@account_sid}/Messages.json", form: {
        "To"   => to,
        "From" => from,
        "Body" => body
      })

      Twilio::Mapping::Messages.from_json(handle_response(response))
    end    
  end
end