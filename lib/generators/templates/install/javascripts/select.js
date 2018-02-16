import MygSelect from 'myg-select';

document.addEventListener( 'turbolinks:load', () => {
    const mygSelects = MygSelect.initAll( document.querySelectorAll('.myg-select'), {} );
})
