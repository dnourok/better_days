# Action Cable provides the framework to deal with WebSockets in Rails.
# You can generate new channels where WebSocket features live using the rails generate channel command.
#
# Turn on the cable connection by removing the comments after the require statements (and ensure it's also on in config/routes.rb).
#
#= require action_cable
#= require_self
#= require_tree ./channels
#

@App ||= {}
App.cable = ActionCable.createConsumer()

# this is on client side - turn on so we create a consumer of this cable. 
# dont connect till logged in