$LOAD_PATH.unshift 'lib'
require 'board'
require 'game'
require 'computer'
require 'human'

begin
  require 'simplecov'
  SimpleCov.start
rescue LoadError
  puts 'Coverage disabled, enable by installing simplecov'
end
