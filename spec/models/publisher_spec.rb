require 'rails_helper'
require 'factory_bot_rails'

RSpec.describe Publisher, type: :model do
  it { should validate_presence_of(:name) }

  context 'with invalid params' do
    it 'is invalid with a nil name' do
      publisher = Publisher.new(name: nil)
      expect(publisher.valid?).to be false
    end
    it 'is invalid blank name' do
      publisher = Publisher.new(name: '')
      expect(publisher.valid?).to be false
    end
  end

  context 'with valid params' do
    it 'has a valid factory' do
      expect(build(:publisher)).to be_valid
    end
    it 'valid with a name' do
      publisher = Publisher.new(name: 'O Reilly')
      expect(publisher.valid?).to be true
    end
  end
end
