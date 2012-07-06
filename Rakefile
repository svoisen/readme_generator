require 'rspec/core/rake_task'

$:.unshift(File.dirname(__FILE__))

task :default => [:run]

desc "Run app locally"
task :run => "Gemfile.lock" do
  require 'app'
  Sinatra::Application.run!
end

desc "Run specs"
Rspec::Core::RakeTask.new

file "Gemfile.lock" => "Gemfile" do
  sh "bundle && touch Gemfile.lock"
end
