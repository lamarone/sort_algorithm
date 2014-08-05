#!/usr/bin/env ruby

# reload lib dir
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'sort_algorithm'

parameter = Business::CommandParameter.new(ARGV)
Business::ServiceBuilder.build(parameter).run

# case ARGV[0]
#   when "bubble_command" then
#     service = Business::ServiceBuilder.build_with_command_format(Algorithm::Bubble.new)
#   when "bubble_yml" then
#     service = Business::ServiceBuilder.build_with_yml_format(Algorithm::Bubble.new)
#   when "quick_command" then
#     service = Business::ServiceBuilder.build_with_command_format(Algorithm::Quick.new)
#   when "quick_yml" then
#     service = Business::ServiceBuilder.build_with_yml_format(Algorithm::Quick.new)
# end
#
# service.run(ARGV[1])