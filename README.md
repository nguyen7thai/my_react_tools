# MyReactTools

Tools and configurations I need to develop Rails web app with ReactJs, includes:

    npm, react-rails, bower-rails, browserify-rails

## Installation

Add this line to your application's Gemfile:

    gem 'my_react_tools'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install my_react_tools

## Usage

Generate config files:

    $ rake rake react_tools:generate

Installation:

    $ rake react_tools:install

Conventions:

  - React components are put in `components` directory and exported as CommonJs modules. They are not exposed in global scope.

      $ var Component = require('components/component.jsx')

  - ViewPages are in views folder and binded to global scope (window scope), so that they can be rendered directly from Rails controller

      $ render component: 'Module.myView'

  - To install bowers before assets precompile, enable this option in initializers/bower_rails.rb

      $ bower_rails.install_before_precompile = true
