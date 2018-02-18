import MygActionButton from 'myg-action-button';

document.addEventListener( 'turbolinks:load', () => {
    const mygActionButton = MygActionButton.init( document.querySelector('.myg-action-button'), {} );
})
