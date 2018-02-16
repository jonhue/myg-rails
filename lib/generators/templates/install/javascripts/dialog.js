import MygDialog from 'myg-dialog';

document.addEventListener( 'turbolinks:load', () => {
    const mygDialogs = MygDialog.initAll( document.querySelectorAll('.myg-dialog'), {} );
})
