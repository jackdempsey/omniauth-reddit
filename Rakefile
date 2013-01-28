require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |task|
  task.libs << 'test'
  task.test_files = FileList[File.expand_path('../test/**/*_test.rb', __FILE__)]
  task.verbose = true
end

task :default => :test
