require File.dirname(__FILE__) + '/spec_helper.rb'
require 'wbxml'

describe "WBXML conversion to WBXML" do
  Dir["spec/fixtures/xml/*.xml"].each do |xml|
    expected_output = xml.sub(%r{spec/fixtures/xml/(.*).xml\Z}, 'spec/fixtures/wbxml/\1.wbxml')
    actual_output = expected_output.sub(%r{/wbxml/},'/actual/')
    basename = $1

    it "converts XML sample #{basename} to expected WBXML output" do
      input_file = File.open(xml) {|f| f.read }

      wbxml = WBXML.xml_to_wbxml input_file
      File.open(actual_output, "w") {|f| f.write wbxml }

      if File.exists? expected_output
        expected_file = File.open(expected_output) {|f| f.read}
        wbxml.should == expected_file
      else
        pending "Created expected output for #{basename} in #{actual_output}"
      end
    end
  end
end

describe "WBXML conversion from WBXML" do
  Dir["spec/fixtures/wbxml/*.wbxml"].each do |wbxml|
    expected_output = wbxml.sub(%r{spec/fixtures/wbxml/(.*).wbxml\Z}, 'spec/fixtures/xml/\1.xml')
    actual_output = expected_output.sub(%r{/xml/},'/actual/')
    basename = $1

    it "converts WBXML sample #{basename} to expected XML output" do
      input_file = File.open(wbxml) {|f| f.read }

      xml = WBXML.wbxml_to_xml input_file
      File.open(actual_output, "w") {|f| f.write xml }

      if File.exists? expected_output
        expected_file = File.open(expected_output) {|f| f.read}
        xml.should == expected_file
      else
        pending "Created expected output for #{basename} in #{actual_output}"
      end
    end
  end
end
