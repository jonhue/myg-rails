# Checkboxes

**[Original documentation](https://github.com/jonhue/myg/tree/master/packages/checkbox)**

### Usage

```haml
= component 'myg/checkbox', attribute: :attribute
```

This translates to:

```html
<div class="myg-checkbox mdc-checkbox">
    <input value="0" type="hidden" name="attribute" />
    <input class="mdc-checkbox__native-control" type="checkbox" value="1" name="attribute" id="attribute" />
    <div class="mdc-checkbox__background">
        <svg class="mdc-checkbox__checkmark" viewBox="0 0 24 24">
            <path class="mdc-checkbox__checkmark__path" fill="none" stroke="white" d="M1.73,12.91 8.1,19.28 22.79,4.59"/>
        </svg>
        <div class="mdc-checkbox__mixedmark"></div>
    </div>
</div>
```

#### Javascript

```js
MygCheckbox.initAll(document.querySelectorAll('.myg-checkbox'));
```

### Options

* **`attribute` (mandatory)** The name/attribute of a checkbox.
* **`class_name`** A string to indicate the class name of the object the attribute belongs to. Used to define the `name` and `id` attributes of the checkbox. Accepts a string. Can look like: `'user[settings]'`
