import MygTitlebar from 'myg-titlebar';

document.addEventListener( 'turbolinks:load', () => {
    const mygTitlebar = new MygTitlebar( document.querySelector('.myg-titlebar'), {} );
})
