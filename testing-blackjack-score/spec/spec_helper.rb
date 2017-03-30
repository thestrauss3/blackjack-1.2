require "pry"
require_relative "../lib/deck"
require_relative "../lib/hand"
require_relative "../lib/dealer"
require_relative "../lib/player"
require_relative "../lib/table"
require_relative "../lib/card"
require_relative "../lib/constants"

def instructions(message)
  puts "\n*********************************************\n\n"
  puts message
  puts "\n*********************************************"
end
