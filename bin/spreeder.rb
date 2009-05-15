#!/usr/bin/env ruby 
$LOAD_PATH.push File.join(File.dirname(__FILE__), "/../lib") 

require 'rubygems'
require 'highline/import'

require 'spreeder/spreeding_session'               

spreeding_session = Spreeder::SpreedingSession.new(STDOUT) 
spreeding_session.start