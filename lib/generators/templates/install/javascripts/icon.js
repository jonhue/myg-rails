import MygIcon from 'myg-icon';

document.addEventListener( 'turbolinks:load', () => {
    const mygIcons = MygIcon.initAll( document.querySelectorAll('.myg-icon'), {} );
})
