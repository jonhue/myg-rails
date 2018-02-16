import MygToolbar from 'myg-toolbar';

document.addEventListener( 'turbolinks:load', () => {
    const mygToolbar = new MygToolbar( document.querySelector('.myg-toolbar'), {} );
})
