import MygCard from 'myg-card';

document.addEventListener( 'turbolinks:load', () => {
    const mygCards = MygCard.initAll( document.querySelectorAll('.myg-card'), {} );
})
