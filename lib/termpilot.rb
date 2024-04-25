# frozen_string_literal: true

require_relative 'services/openai_service'

# Entry point for the Termpilot gem
class Termpilot
  def self.run(query)
    OpenaiService.chat(query)
  end
end
