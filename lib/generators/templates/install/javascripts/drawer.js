import MygDrawer from 'myg-drawer';

document.addEventListener( 'turbolinks:load', () => {
    const mygDrawer = MygDrawer.init( document.querySelector('.myg-drawer'), {} );
})
