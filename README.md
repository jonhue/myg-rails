# Myg on Rails

[![Gem Version](https://badge.fury.io/rb/myg.svg)](https://badge.fury.io/rb/myg) <img src="https://travis-ci.org/jonhue/myg-rails.svg?branch=master" />

---

## Table of Contents

* [Installation](#installation)
* [Philosophy](#philosophy)
* [Usage](#usage)
    * [Mozaic components](#mozaic-components)
* [To Do](#to-do)
* [Contributing](#contributing)
    * [Contributors](#contributors)
    * [Semantic versioning](#semantic-versioning)
* [License](#license)

---

## Installation

Myg on Rails works with Rails 5 onwards. You can add it to your `Gemfile` with:

```ruby
gem 'myg-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install myg

If you always want to be up to date fetch the latest from GitHub in your `Gemfile`:

```ruby
gem 'myg', github: 'jonhue/myg-rails'
```

Now run the generator

    $ rails g myg:install

Then add [Myg](https://github.com/jonhue/myg) to your asset pipeline:

```js
//= require myg
```
```css
/*
 *= require myg
 */
```

**Note:** If you are using a package manager like Yarn, make sure to fetch the latest versions instead.

---

## Philosophy

...

---

## Usage

...

### Mozaic components

These are the components currently supported by Myg on Rails:

* [`button`](components/myg/button.md)
* [`checkbox`](components/myg/checkbox.md)
* [`drawer`](components/myg/drawer.md)
* [`form-field`](components/myg/form-field.md)
* [`input`](components/myg/input.md)
* [`label`](components/myg/label.md)
* [`radio`](components/myg/radio.md)
* [`slider`](components/myg/slider.md)
* [`switch`](components/myg/switch.md)
* [`toolbar`](components/myg/toolbar.md)

You feel a component is missing? Create an issue to make us aware, or implement it yourself. Pull requests are welcome.

---

## To Do

[Here](https://github.com/jonhue/myg-rails/projects/1) is the full list of current projects.

To propose your ideas, initiate the discussion by adding a [new issue](https://github.com/jonhue/myg-rails/issues/new).

---

## Contributing

We hope that you will consider contributing to Myg on Rails. Please read this short overview for some information about how to get started:

[Learn more about contributing to this repository](CONTRIBUTING.md), [Code of Conduct](CODE_OF_CONDUCT.md)

### Contributors

Give the people some :heart: who are working on this project. See them all at:

https://github.com/jonhue/myg-rails/graphs/contributors

### Semantic Versioning

Myg on Rails follows Semantic Versioning 2.0 as defined at http://semver.org.

## License

MIT License

Copyright (c) 2018 Jonas Hübotter

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
