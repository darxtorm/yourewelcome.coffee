# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   darxtorm

urwelcome = [
  "happy to help %!",
  "anytime %!",
  "my pleasure %!",
  "you're welcome %!",
  "don’t mention it %!",
  "no worries %!",
  "not a problem %!",
  "i live to serve %!"
  "it was nothing %, honest!"
]

module.exports = (robot) ->
  robot.hear ///(cheers|thx|thanks|thank\s+you),?\s+#{robot.name}///i, (msg) ->
    hello = msg.random urwelcome
    msg.send hello.replace "%", msg.message.user.name

  robot.respond /(cheers|thx|thanks|thank you)/i, (msg) ->
    hello = msg.random urwelcome
    msg.send hello.replace "%", msg.message.user.name
