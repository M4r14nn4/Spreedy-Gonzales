#!/usr/bin/env ruby 
$LOAD_PATH.push File.join(File.dirname(__FILE__), "/../lib") 

require 'spreeder' 
spreeding_session = Spreeder::SpreedingSession.new(STDOUT) 
spreeding_session.start