# frozen_string_literal: true

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

    puts response.dig('choices', 0, 'message', 'content')
  end

  def self.prepare_query(query)
    "I want you to respond only wth the code snippet or terminal command I ask
    for, nothing else. I would like to know the command to #{query}"
  end
end
