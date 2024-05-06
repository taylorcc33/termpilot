# frozen_string_literal: true

require 'openai'

# Service to interact with OpenAI API
class OpenaiService
  def self.chat(query)
    access_token = ENV.fetch('OPENAI_ACCESS_TOKEN')
    client = OpenAI::Client.new(access_token:)

    query = prepare_query(query)

    response = client.chat(
      parameters: {
        model: 'gpt-3.5-turbo',
        messages: [{ role: 'user', content: query }],
        temperature: 0.7
      }
    )

    response_text = response.dig('choices', 0, 'message', 'content')

    copy_to_clipboard(response_text)
    puts response_text
  end

  def self.prepare_query(query)
    "I want you to respond only wth the code snippet or terminal command I ask
    for, nothing else. No other text, only the code or command. I would like to know the command to #{query}"
  end

  def self.copy_to_clipboard(data)
    IO.popen('pbcopy', 'w') { |pbcopy| pbcopy << data }
  end
end
