import MygTooltip from 'myg-tooltip';

document.addEventListener( 'turbolinks:load', () => {
    const mygTooltips = MygTooltip.initAll( document.querySelectorAll('[data-myg-tooltip]'), {} );
})
