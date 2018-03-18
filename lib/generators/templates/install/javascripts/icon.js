import MygIcon from 'myg-icon';

['turbolinks:load', 'modalist:render', 'myg-tabs:render'].forEach( (event) => {
    document.removeEventListener( event, init );
    document.addEventListener( event, init );
})
function init() {
    const mygIcons = MygIcon.initAll( document.querySelectorAll('.myg-icon'), {} );
}
