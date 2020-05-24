# Action Cable provides the framework to deal with WebSockets in Rails.
# You can generate new channels where WebSockets freatures live using the rails generate channel command. 
#
# Turn on the cable connection by removing the comments after the require statements (and ensure it's 3 also on in cofig/routes.rb).
#
#= require action_cable
#= require_self
#= require_tree ./channels
#
@App ||= {}
App.cable = ActionCable.createConsumer()