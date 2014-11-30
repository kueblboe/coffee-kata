# Specs
describe "Coffee", ->

  coffee = null

  beforeEach ->
    coffee = new Coffee('awesome')

  it "tastes awesome", ->
    expect( coffee.taste ).toEqual("awesome")

  it "is gone after drinking", ->
    expect( coffee.full ).toBe(true)
    expect( coffee.drink().full ).toBe(false)

# Production code
class @Coffee

  constructor: (@taste) ->
    @full = true

  drink: ->
    @full = false
    this