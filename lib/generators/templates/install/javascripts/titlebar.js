import MygTitlebar from 'myg-titlebar';

document.addEventListener( 'turbolinks:load', () => {
    const mygTitlebar = MygTitlebar.init( document.querySelector('.myg-titlebar'), {} );
})
