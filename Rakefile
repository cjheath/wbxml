require 'rubygems'
require 'rake'
require 'jeweler'
require './lib/wbxml/version'

Jeweler::Tasks.new do |gem|
  gem.name = "wbxml"
  gem.version = Wbxml::VERSION::STRING
  gem.homepage = "http://github.com/cjheath/wbxml"
  gem.license = "MIT"
  gem.summary = %Q{Augment 'require' to load non-Ruby file types}
  gem.description = %Q{
The Wbxml library wraps libwbxml to enable handling WBXML, a binary representation of XML used in WAP to reduce bandwidth in mobile communications.
}
  gem.email = %w[clifford.heath@gmail.com]
  gem.authors = ["Clifford Heath"]
end
Jeweler::RubygemsDotOrgTasks.new

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "wbxml #{Wbxml::VERSION::STRING}"
  rdoc.rdoc_files.include('README.txt')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
