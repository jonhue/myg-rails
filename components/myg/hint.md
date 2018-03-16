# Hints

**[Original documentation](https://github.com/jonhue/myg/tree/master/packages/labels)**

### Usage

```haml
= component 'myg/label' do
    ...
```

This translates to:

```html
<label class="myg-label mdc-label">
    ...
</label>
```

### Options

* **`class`** Add classes to the generated input. Accepts a string.
* **`id`** Add an id to the generated input. Accepts a string.
