require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rdoc/task'

RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.main = 'README.md'
  rdoc.rdoc_files.include('README.md', 'lib/**/*.rb')
end

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/*test.rb']
  t.verbose = true
end

task default: :test
