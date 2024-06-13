class ChatGptService
  include HTTParty
  base_uri 'https://api.openai.com/v1'

  def initialize
    @api_key = Rails.application.credentials.dig(:openai, :api_key)
  end

  def chat(message)
    options = {
      headers: {
        'Content-Type' => 'application/json',
        'Authorization' => "Bearer #{@api_key}"
      },
      body: {
        model: 'gpt-3.5-turbo',
        messages: [{ role: 'user', content: message }]
      }.to_json
    }
    self.class.post('/chat/completions', options)
  end
end