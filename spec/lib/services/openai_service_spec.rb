# frozen_literal_string: true

require 'spec_helper'
require 'services/openai_service'

RSpec.describe Services::OpenaiService do
  describe '.chat' do
    it 'calls the OpenAI API' do
      expect(OpenAI::Client).to receive(:new).with(access_token: 'access_token')
    end
  end
end
