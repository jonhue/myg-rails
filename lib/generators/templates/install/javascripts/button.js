import MygButton from 'myg-button';

document.addEventListener( 'turbolinks:load', () => {
    const mygButtons = MygButton.initAll( document.querySelectorAll('.myg-button'), {} );
})
