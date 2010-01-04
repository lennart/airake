require 'fileutils'
include FileUtils

begin
  require File.join(File.dirname(__FILE__),%w{.. vendor gems environment})
  Bundler.require_env 
rescue LoadError => e
  puts " '#{File.expand_path e.message.split(" -- ").last}' missing."
  puts "Run `gem bundle` first."
  exit
end

$:.unshift(File.join(File.dirname(__FILE__), %w[.. lib]))

