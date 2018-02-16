import MygMenu from 'myg-menu';

document.addEventListener( 'turbolinks:load', () => {
    const mygMenu = new MygMenu( document.querySelector('.myg-menu'), {} );
})
