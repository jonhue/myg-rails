import MygTabs from 'myg-tabs';

document.addEventListener( 'turbolinks:load', () => {
    const mygTabs = new MygTabs( document.querySelector('.myg-tabs'), {} );
})
