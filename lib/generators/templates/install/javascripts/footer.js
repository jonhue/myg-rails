import MygFooter from 'myg-footer';

document.addEventListener( 'turbolinks:load', () => {
    const mygFooter = MygFooter.init( document.querySelector('.myg-footer'), {} );
})
