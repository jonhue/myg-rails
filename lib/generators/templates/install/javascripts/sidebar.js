import MygSidebar from 'myg-sidebar';

document.addEventListener( 'turbolinks:load', () => {
    const mygSidebar = MygSidebar.init( document.querySelector('.myg-sidebar'), {} );
})
