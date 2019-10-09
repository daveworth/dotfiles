require 'irb/completion'
require 'irb/ext/save-history'

# Use Pry everywhere
require 'rubygems'
require 'pry'

ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history" 

Pry.start
exit
