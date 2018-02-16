import MygSlider from 'myg-slider';

document.addEventListener( 'turbolinks:load', () => {
    const mygSliders = MygSlider.initAll( document.querySelectorAll('.myg-slider'), {} );
})
