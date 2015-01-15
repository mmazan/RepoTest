#event_steps.rb

class Event
		attr_accessor :author
		def initialize
			@author = "Manuel Mazan"
		end
end

Given(/^a new event$/) do
  @my_event = Event.new
end

When(/^I request the author of an event$/) do
  @author = @my_event.author
end

Then(/^I should see "(.*?)"$/) do |arg1|
  @author.should == name
end
