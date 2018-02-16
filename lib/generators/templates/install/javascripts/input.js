import MygInput from 'myg-input';

document.addEventListener( 'turbolinks:load', () => {
    const mygInputs = MygInput.initAll( document.querySelectorAll('.myg-input'), {} );
})
