# Specs

describe "Coffee", ->

  coffee = null

  beforeEach ->
    coffee = new Coffee('awesome')

  it "tastes awesome", ->
    expect( coffee.taste ).toEqual("awesome")

# Production code
class @Coffee

  constructor: (@taste) ->

