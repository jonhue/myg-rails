import MygToast from 'myg-toast';

document.addEventListener( 'turbolinks:load', () => {
    const mygToast = new MygToast( document.querySelector('.myg-toast'), {} );
})
