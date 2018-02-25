# Drawers

**[Original documentation](https://github.com/jonhue/myg/tree/master/packages/drawer)**

### Usage

```haml
= component 'myg/drawer' do
    ...
```

This translates to:

```html
<aside class="myg-drawer mdc-drawer mdc-drawer--temporary">
    ...
</aside>
```

#### Javascript

```js
MygDrawer.init(document.querySelector('.myg-drawer'));
```
