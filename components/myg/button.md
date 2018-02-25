# Buttons

**[Original documentation](https://github.com/jonhue/myg/tree/master/packages/button)**

### Usage

```haml
= component 'myg/button', value: 'Submit'
```

This translates to:

```html
<input class="myg-button" type="submit" name="commit" value="Submit" />
```

#### Javascript

```js
MygButton.initAll(document.querySelectorAll('.myg-button'));
```

### Options

* **`value` (mandatory)** Value of rendered input or hyperlink. Accepts a string.
* **`href`** Render a hyperlink instead of an input. Accepts a relative or absolute URL as a string.
