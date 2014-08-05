#!/usr/bin/env ruby

# reload lib dir
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'sort_algorithm'

parameter = Business::CommandParameter.new(ARGV)
Business::ServiceBuilder.build(parameter).run