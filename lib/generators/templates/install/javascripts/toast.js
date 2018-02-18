import MygToast from 'myg-toast';

document.addEventListener( 'turbolinks:load', () => {
    const mygToast = MygToast.init( document.querySelector('.myg-toast'), {} );
})
