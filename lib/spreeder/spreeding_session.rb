module Spreeder
  class SpreedingSession   
    def initialize(messenger) 
      @messenger = messenger
    end
    
    def start
      @messenger.puts "Let's spreed it up with Spreedy Gonzales!"
      @messenger.puts "Enter the the path where I can reach the file you'd like to spreed:"
    end
  end
end