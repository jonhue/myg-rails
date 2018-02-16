import MygSidebar from 'myg-sidebar';

document.addEventListener( 'turbolinks:load', () => {
    const mygSidebar = new MygSidebar( document.querySelector('.myg-sidebar'), {} );
})
