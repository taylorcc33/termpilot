# frozen_string_literal: true

require 'openai'

# Service to interact with OpenAI API
class OpenaiService
  def self.chat(query)
    access_token = ENV.fetch('OPENAI_ACCESS_TOKEN')
    client = OpenAI::Client.new(access_token:)

    response = client.chat(
      parameters: {
        model: 'gpt-3.5-turbo',
        messages: [{ role: 'user', content: query }],
        temperature: 0.7
      }
    )

    puts response.dig('choices', 0, 'message', 'content')
  end
end
