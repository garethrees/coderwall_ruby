require_relative '../../spec_helper'

describe CoderwallRuby::User do

  it 'can make HTTP requests' do
    CoderwallRuby::User.must_include HTTParty
  end

  it 'communicates with coderwall' do
    CoderwallRuby::User.base_uri.must_equal 'https://coderwall.com'
  end

  describe 'GET profile' do
 
    let(:user) { CoderwallRuby::User.new('garethrees') }

    before do
       VCR.insert_cassette 'user', :record => :new_episodes
    end

    after do
      VCR.eject_cassette
    end

    it 'must respond to profile' do
      user.must_respond_to :profile
    end

    it 'parses the API response from JSON to a hash' do
       user.profile.must_be_instance_of Hash
    end

    it 'performs the request and gets the profile data' do
      user.profile['username'].must_equal 'garethrees'
    end

    describe 'dynamic attributes' do
 
      it 'returns the attribute value if present in the profile' do
        user.name.must_equal 'Gareth Rees'
      end

      it 'raises a NoMethodError if an attribute is not present' do
        lambda { user.dolen }.must_raise NoMethodError
      end

    end

  end

end