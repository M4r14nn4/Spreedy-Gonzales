Given /^I am not yet spreeding$/ do
end    

#the start() method returns an array of messages
When /^I start a new spreeding session$/ do
  @messenger = StringIO.new
  spreeding_session = Spreeder::SpreedingSession.new(@messenger)
  spreeding_session.start
end

#expect the array to contain the message we're interested in
Then /^the spreeding session should say: "(.*)"$/ do |message| 
  @messenger.string.split("\n").should include(message)
end





