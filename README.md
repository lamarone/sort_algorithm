# SortAlgorithm

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'sort_algorithm'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sort_algorithm

## Usage

TODO: cd in and run following command in the command line:
       $ ruby bin/run.rb <algorithm> <format> <data>
        
       <algorithm> can be replaced by "bubble" and "quick" ,which depends on the algorithm you want to use.
       <format> can be replaced by "command" or "yml", depends on the method which you import the data.
       <data> is the data you want to import through command line,which for example can be replaced by 4,3,2,1.However,when format is yml, you can not fill this parameter.
       eg1: ruby bin/run.rb bubble command 4,3,2,1 
       eg2: ruby bin/run.rb quick yml
       
       
       However,if you want to get the interactive service,you should run the following command:
        $ ruby bin/run_interactive.rb
        and then ,you can input commands and get the result at the same time for any times you want.
        <command type> <algorithm> <format> <data1> <data2>
        
        <command type> can be replaced by "sort" and "search" ,which depends on the function you want to realize.
        <algorithm> can be replaced by "bubble" and "quick" ,which depends on the algorithm you want to use.
        <format> can be replaced by "command" or "yml", depends on the method which you import the data.
        <data1> and <data2> is the data which you have for the command
        
        eg3: sort bubble yml
        eg4: sort quick command 4,3,2,1
        eg5: search binary command 1,2,3,7,8 8
    

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
