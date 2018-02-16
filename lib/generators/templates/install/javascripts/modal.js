import MygModal from 'myg-modal';

document.addEventListener( 'turbolinks:load', () => {
    const mygModals = MygModal.initAll( document.querySelectorAll('.myg-modal'), {} );
})
