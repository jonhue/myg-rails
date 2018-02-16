import MygRadio from 'myg-radio';

document.addEventListener( 'turbolinks:load', () => {
    const mygRadios = MygRadio.initAll( document.querySelectorAll('.myg-radio'), {} );
})
