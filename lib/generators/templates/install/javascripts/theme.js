import MygTheme from 'myg-theme';

document.addEventListener( 'turbolinks:load', () => {
    const mygTheme = new MygTheme( document.querySelector('html'), {} );
})
