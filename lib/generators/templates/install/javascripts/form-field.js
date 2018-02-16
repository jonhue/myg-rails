import MygFormField from 'myg-form-field';

document.addEventListener( 'turbolinks:load', () => {
    const mygFormFields = MygFormField.initAll( document.querySelectorAll('.myg-form-field'), {} );
})
