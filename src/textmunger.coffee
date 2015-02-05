# Specs
describe "Textmunger", ->

  beforeEach ->
    @textmunger = new Textmunger

  it "munges one letter words", ->
    expect( @textmunger.munge("a") ).toEqual("a")
    expect( @textmunger.munge("b") ).toEqual("b")

  it "munges four letter words", ->
    expect( @textmunger.munge("life") ).toEqual("lfie")

  it "munges multiple words", ->
    expect( @textmunger.munge("Extreme Programming for life") )
      .toEqual("Emertxe Pnimmargorg for lfie")

  it "munges sentences", ->
    expect( @textmunger.munge("Extreme Programming for life!") )
      .toEqual("Emertxe Pnimmargorg for lfie!")

  it "munges multiple sentences", ->
    expect( @textmunger.munge("Extreme Programming for life!  Oh yeah.") )
      .toEqual("Emertxe Pnimmargorg for lfie!  Oh yaeh.")

# Production code
class Textmunger

  munge: (text) ->
    (@mungeWord(word) for word in text.split(' ')).join(' ')
    
  mungeWord: (word) ->
    [first, middle..., last] = word
    if last and last.search(/[\w]/) is -1
      @mungeWord(first + middle.join('')) + last
    else if word.length > 3
      first + middle.reverse().join('') + last
    else
      word
