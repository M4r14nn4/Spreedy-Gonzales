module Spreeder
  class SpreedingSession   
    def initialize(messenger) 
      @messenger = messenger
    end
    
    def start(file=nil)
      @messenger.puts "Let's spreed it up with Spreedy Gonzales!"
      #@messenger.puts "Enter the the path where I can reach the file you'd like to spreed:"
      file_submittion   
      is_readable?   
    end

#TODO heh, this function does not do the job its name would propose, right now it checks only if the given file exists or not.
#Need to implement later: check if it make sense to read it for spreeding purposes, for now it is good enough as it is    
    def is_readable?
      if File.file? @current_file  
        @messenger.puts "Initializing spreeding"
      else
        @messenger.puts "Sorry, unable to find the required document"  
      end
    end

#TODO here will come some additional stuff to customise the spreeding session      
    def file_submittion
      answer = ask("Enter the the path where I can reach the file you'd like to spreed:")
      #this needs to be more general (it seems it does not like ~ for some reason)
      @current_file = "/Users/Marianna/#{answer}"
    end
    
      
    
  end                       
end