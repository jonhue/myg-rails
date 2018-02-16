import MygFooter from 'myg-footer';

document.addEventListener( 'turbolinks:load', () => {
    const mygFooter = new MygFooter( document.querySelector('.myg-footer'), {} );
})
