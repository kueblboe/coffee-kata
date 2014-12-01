# Specs
describe "FizzBuzzer", ->

  beforeEach ->
    @fizzbuzzer = new FizzBuzzer()

  it "returns the number", ->
    expect( @fizzbuzzer.buzz(1) ).toEqual(1)
    expect( @fizzbuzzer.buzz(2) ).toEqual(2)

  it "returns fizz for a number divisible by 3", ->
    expect( @fizzbuzzer.buzz(3) ).toEqual("fizz")
    expect( @fizzbuzzer.buzz(6) ).toEqual("fizz")

  it "returns buzz for a number divisible by 5", ->
    expect( @fizzbuzzer.buzz(5) ).toEqual("buzz")

  it "returns fizzbuzz for a number divisible by 3 and 5", ->
    expect( @fizzbuzzer.buzz(15) ).toEqual("fizzbuzz")

# Production code
class FizzBuzzer

  buzz: (number) ->
    "#{unless number%3 then 'fizz' else ''}#{unless number%5 then 'buzz' else ''}" or number