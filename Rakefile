require 'rubygems'
require 'citrus'

task :default do
  Citrus.load('asp')
  Dir['test/code/**/*.asp'].each do |file|
    ASP.parse(File.read(file)).get.each {|block| p block }
  end
end
