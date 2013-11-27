require 'spec_helper'
require 'omniauth-assembla'

describe OmniAuth::Strategies::Assembla do
  subject do
    strategy = OmniAuth::Strategies::Assembla.new(nil, @options || {})
    strategy.stub(:session) { {} }
    strategy
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'should have the correct Assembla site' do
      subject.client.site.should eq("https://api.assembla.com")
    end

    it 'should have the correct authorization url' do
      subject.client.options[:authorize_url].should eq("/authorization")
    end

    it 'should have the correct token url' do
      subject.client.options[:token_url].should eq('/token')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      subject.callback_path.should eq('/auth/assembla/callback')
    end
  end
end
