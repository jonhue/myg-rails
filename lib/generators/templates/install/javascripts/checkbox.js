import MygCheckbox from 'myg-checkbox';

document.addEventListener( 'turbolinks:load', () => {
    const mygCheckboxes = MygCheckbox.initAll( document.querySelectorAll('.myg-checkbox'), {} );
})
