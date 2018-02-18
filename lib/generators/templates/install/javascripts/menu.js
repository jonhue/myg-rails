import MygMenu from 'myg-menu';

document.addEventListener( 'turbolinks:load', () => {
    const mygMenu = MygMenu.init( document.querySelector('.myg-menu'), {} );
})
