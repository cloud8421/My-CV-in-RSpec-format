$LOAD_PATH << './'
require 'rake'
require 'rspec/core/rake_task'
require 'cv_spec'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.verbose = false
  t.pattern = './*_spec.rb'
  t.rspec_opts = ['--color --format nested']
end

task :greet do
  puts "Hello! Let me introduce myself. This is my CV in RSpec format. Hope you like it!"
  raise "Sorry to hear that" unless ask('Type Y to continue: ').downcase == 'y'
end

task :explain do
  puts "Pending specs means I'm working on them :-).\n
        Hopefully I've caught your curiosity."
end

task :default  => [:greet, :spec, :explain]

def ask message
  print message
  STDIN.gets.chomp
end