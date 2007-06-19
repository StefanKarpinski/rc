local_irbrc = "#{Dir.pwd}/.irbrc"
load local_irbrc if File.exist?(local_irbrc) and Dir.pwd != ENV['HOME']
require 'irb/completion'
