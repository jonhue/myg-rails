# Toolbars

**[Original documentation](https://github.com/jonhue/myg/tree/master/packages/toolbar)**

### Usage

```haml
= component 'myg/toolbar' do
  ...
```

This translates to:

```html
<aside class="myg-toolbar mdc-toolbar">
  ...
</aside>
```

### Options

* **`class`** Add classes to the generated toolbar. Accepts a string.
* **`id`** Add an id to the generated toolbar. Accepts a string.
