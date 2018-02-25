# Form Fields

**[Original documentation](https://github.com/jonhue/myg/tree/master/packages/form-field)**

### Usage

```haml
= component 'myg/form-field', attribute: :attribute, as: :input
```

This translates to:

```html
<div class="myg-form-field">
    <input class="myg-input" type="text" name="attribute" id="attribute"></input>
</div>
```

Possible values for `as` are:

* `button`
* `checkbox`
* `input`
* `radio`
* `switch`

#### Javascript

```js
MygFormField.initAll(document.querySelectorAll('.myg-form-field'));
```

### Options

* **`attribute` (mandatory unless button)** The name/attribute of the form element.
* **`value` (mandatory if button)** The value of a form element.
* **`class_name`** A string to indicate the class name of the object the attribute belongs to. Used to define the `name` and `id` attributes of a form element. Accepts a string. Can look like: `'user[settings]'`
* **`label`** Label for form element. Accepts a string or an array of strings.
* **`inline_label`** Inline label for form element. Accepts a string or an array of strings.
* **`floating_label`** Floating label for form element. Accepts a string.
