# Specs
describe "RomanNumerals", ->

  beforeEach ->
    @romanNumerals = new RomanNumerals

  it "converts arabic numbers in roman numerals", ->
    expect( @romanNumerals.convert(1)   ).toEqual("I")
    expect( @romanNumerals.convert(2)   ).toEqual("II")
    expect( @romanNumerals.convert(4)   ).toEqual("IV")
    expect( @romanNumerals.convert(5)   ).toEqual("V")
    expect( @romanNumerals.convert(9)   ).toEqual("IX")
    expect( @romanNumerals.convert(639) ).toEqual("DCXXXIX")

# Production code
class RomanNumerals
  dictionary = [
    [1000,  'M'],
    [900,  'CM'],
    [500,   'D'],
    [400,  'CD'],
    [100,   'C'],
    [90,   'XC'],
    [50,    'L'],
    [40,   'XL'],
    [10,    'X'],
    [9,    'IX'],
    [5,     'V'],
    [4,    'IV'],
    [1,     'I']
  ]

  convert: (number) ->
    for [arabic, roman] in dictionary
      return roman + @convert(number - arabic) if number >= arabic
    ''
