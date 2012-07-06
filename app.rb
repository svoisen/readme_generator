Dir[File.join(File.dirname(__FILE__), 'lib/*.rb')].each {|f| require f}

require 'sinatra'

get '/' do
  ReadmeGenerator.new.generate("Foo")
end
