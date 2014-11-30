# coffee-kata

A starting ground for TDD katas with [Coffeescript] and [Jasmine]. Tests are automatically run when a file is saved.

## Usage

This assumes you got [node] installed. Then in a terminal run

    git clone https://github.com/kueblboe/coffee-kata.git
    cd coffee-kata
    npm install
    ./node_modules/karma/bin/karma start

Write your tests and code in the _src_ directory. When you save your files the tests will run and their result will be shown in the terminal and a notification is sent to [Growl].

I defined myself an alias for my terminal so I can start a Kata by typing 'ck'.
    alias ck="git clone https://github.com/kueblboe/coffee-kata.git; cd coffee-kata; st .; npm install; ./node_modules/karma/bin/karma start"

[Coffeescript]: http://coffeescript.org/
[Jasmine]: http://jasmine.github.io/
[node]: http://nodejs.org/
[Karma]: http://karma-runner.github.io/0.12/index.html
[Growl]: http://growl.info/