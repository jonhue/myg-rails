import MygText from 'myg-text';

document.addEventListener( 'turbolinks:load', () => {
    const mygTexts = MygText.initAll( document.querySelectorAll('.myg-text'), {} );
})
