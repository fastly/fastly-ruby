require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rdoc/task'

desc 'Run library from within a Pry console'
task :console do
  require 'pry'
  require 'fastly'
  ARGV.clear
  Pry.start
end

RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.main = 'README.md'
  rdoc.rdoc_files.include('README.md', 'lib/**/*.rb')
end

namespace :test do
  desc 'Run all unit tests'
  task :unit do
    sh 'bundle exec ruby -Itest -Ilib test/fastly/*_test.rb'
  end
end

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/*test.rb']
  t.verbose = true
end

task default: :test
