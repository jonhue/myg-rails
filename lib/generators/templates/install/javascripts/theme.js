import MygTheme from 'myg-theme';

document.addEventListener( 'turbolinks:load', () => {
    const mygTheme = MygTheme.init( document.querySelector('html'), {} );
})
