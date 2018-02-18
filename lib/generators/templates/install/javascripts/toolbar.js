import MygToolbar from 'myg-toolbar';

document.addEventListener( 'turbolinks:load', () => {
    const mygToolbar = MygToolbar.init( document.querySelector('.myg-toolbar'), {} );
})
