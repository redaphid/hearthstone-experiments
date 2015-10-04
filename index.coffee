_ = require 'lodash'
{yellow, red, green, blue} = require 'colors'
cardsByType = require './hearthstone-cards.json'

cardTypes = [
  'Basic'
  'Blackrock Mountain'
  'Classic'
  'Curse of Naxxramas'
  'Goblins vs Gnomes'
  'Tavern Brawl'
  'The Grand Tournament'
]

cardsByType = _.pick cardsByType, cardTypes

cards = _.flatten _.values cardsByType

deck = _.sample cards, 60

deckNames = _.pluck deck, 'name'

console.log yellow(deckNames)
