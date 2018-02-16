import MygProgress from 'myg-progress';

document.addEventListener( 'turbolinks:load', () => {
    const mygProgresses = MygProgress.initAll( document.querySelectorAll('.myg-progress'), {} );
})
