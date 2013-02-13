require 'httparty'

Dir[File.dirname(__FILE__) + '/coderwall_ruby/*.rb'].each do |file|
  require file
end