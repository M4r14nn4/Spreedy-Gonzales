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
      it "should send a welcome message" do 
        @messenger.should_receive(:puts).with("Let's spreed it up with Spreedy Gonzales!")
        @spreeding_session.start  
      end
      it "should prompt for the file to be loaded for spreeding" do
        @messenger.should_receive(:puts).with("Enter the the path where I can reach the file you'd like to spreed:")
        @spreeding_session.start
      end
    end    
  end
end