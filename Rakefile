require 'config/requirements'
require 'config/hoe' # setup Hoe + all gem configuration
require 'fileutils'

Dir['tasks/**/*.rake'].each { |rake| load rake }

task "lib/wbxml.bundle" => "extconf:wbxml" do |task|
  source = Dir["ext/wbxml/wbxml.{so,bundle,dll}"].sort[0]
  target = "lib/wbxml."+source.sub(/.*\./,'')
  FileUtils.cp(source, target)
end
