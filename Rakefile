require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['spec/lib/coderwall_ruby/*_spec.rb']
  t.verbose = true
end

task :default => :test