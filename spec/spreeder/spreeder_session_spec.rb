require File.join(File.dirname(__FILE__), "/../spec_helper") 

module Spreeder
  describe SpreedingSession do 
    
    context "starting up" do
      
      before(:each) do
        #as_null_object() method tells the mock messenger to only listen for the msgs we tell it to expect and ignore the rest
        #(based on the Null Object design pattern)
        @messenger = mock("messenger").as_null_object
        @spreeding_session = SpreedingSession.new(@messenger)
      end  
      
      it "should send a welcome message (passing the file to start)" do 
        @messenger.should_receive(:puts).with("Let's spreed it up with Spreedy Gonzales!")
        @spreeding_session.start  
      end
      it "should prompt for the file to be loaded for spreeding" do
        @messenger.should_receive(:puts).with("Enter the the path where I can reach the file you'd like to spreed:")
        @spreeding_session.start
      end
    
    end
    
    context "submiting a file " do    
      
      before(:each) do
        @messenger = mock("messenger").as_null_object
        @spreeding_session = SpreedingSession.new(@messenger)
      end

      it "should send a message if file does not exist" do
        @messenger.should_receive(:puts).with("Sorry, unable to find the required document")   
        @spreeding_session.is_readable?("i_dont_exist.txt")
      end
      
      it "should send a message if file is readable" do
        @messenger.should_receive(:puts).with("Initializing spreeding")   
        @spreeding_session.is_readable?("#{File.dirname(__FILE__)}/../../mock/exists_readable.txt")
      end   

    end
  
  end
end