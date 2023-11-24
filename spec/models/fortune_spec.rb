# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Fortune, type: :model do
  describe 'validations' do
    it "is not valid without text" do
      expect(Fortune.new).to_not be_valid
    end
  end

  describe 'attributes' do
    it { should respond_to(:text) }
  end
end
