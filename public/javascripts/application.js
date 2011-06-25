// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {

    ///Apply watermart text to email address textbox of beta_user_signup page
    $('.reg_email_box').tbHinter({
        text: 'Enter email address...',
        class: 'email_greyText'
    });

});

