################feature: start spreeding#############################
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

#################feature: reader submits a file####################### 
Given /^I am starting a spreeding\-session$/ do 
end 

#Regexp captures the file name and passes it to the body of the step definition
When /^I submit (.*)$/ do |file|
  file_route = "#{File.dirname(__FILE__)}/../../mock/#{file}"  
  @messenger = StringIO.new
  spreeding_session = Spreeder::SpreedingSession.new(@messenger)
  spreeding_session.is_readable?(file_route)
end

Then /^I should get a response: "([^\"]*)"$/ do |message|
  @messenger.string.split("\n").should include(message)
end

