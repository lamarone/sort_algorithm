#!/usr/bin/env ruby

# reload lib dir
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'sort_algorithm'

#convert array_command to string_command
def convert_command(array_command)
  length = array_command.length
  string_command = ''
  (0..length-1).each {|i| string_command = string_command + ' ' + array_command[i]}
  string_command
end

command = convert_command(ARGV)
Command::CommandHandler.new.handle(command)


