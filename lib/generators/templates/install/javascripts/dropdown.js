import MygDropdown from 'myg-dropdown';

document.addEventListener( 'turbolinks:load', () => {
    const mygDropdowns = MygDropdown.initAll( document.querySelectorAll('.myg-dropdown'), {} );
})
