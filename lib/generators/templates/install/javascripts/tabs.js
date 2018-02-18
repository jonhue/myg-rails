import MygTabs from 'myg-tabs';

document.addEventListener( 'turbolinks:load', () => {
    const mygTabs = MygTabs.init( document.querySelector('.myg-tabs'), {} );
})
