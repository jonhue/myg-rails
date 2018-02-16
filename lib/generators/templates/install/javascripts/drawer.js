import MygDrawer from 'myg-drawer';

document.addEventListener( 'turbolinks:load', () => {
    const mygDrawer = new MygDrawer( document.querySelector('.myg-drawer'), {} );
})
