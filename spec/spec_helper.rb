require_relative '../lib/coderwall_ruby'

require 'minitest/autorun'
require 'turn'
require 'vcr'
require 'webmock/minitest'

Turn.config do |c|
  c.format = :dot
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/coderwall_ruby_cassettes'
  c.hook_into :webmock
end