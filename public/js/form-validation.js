$(document).ready(function () {
    $('#name').blur(function (e) {
        if (!validateForm()) e.preventDefault();
    });

    $('#email').blur(function (e) {
        if (!validateForm()) e.preventDefault();
    });

    $('#message').blur(function (e) {
        if (!validateForm()) e.preventDefault();
    });

    $('#contactform').submit(function (e) {
        if (!validateForm()) e.preventDefault();
    });

    function validateForm() {
        isValidForm = (isValidNameField() && isValidEmailField() && isValidMessageField());
        disableSubmit(!isValidForm);
        return isValidForm;
    }

    function disableSubmit(invalid) {
        $(':input[type="submit"]').prop('disabled', invalid);
    }

    function isValidNameField() {
        var name = $('#name').val();
        if (!name || !isValidName(name)) {
            $('#name').css('border-bottom-color', 'rgb(240, 82, 82)');
            if (!$('#name').next().is('.clientSideValidErr')) {
                $('#name').after('<p class="clientSideValidErr mt-2 text-sm text-red-600 dark:text-red-500" role="alert">Please enter your name (min. 3, max 60 characters)</p>');
            }
            return false;
        } else {
            return true;
        }
    }

    function isValidName(name) {
        return (name.length >= 3 && name.length <= 60);
    }

    function isValidEmailField() {
        var email = $('#email').val();
        if (!email || !isValidEmail(email)) {
            $('#email').css('border-bottom-color', 'rgb(240, 82, 82)');
            if (!$('#email').next().is('.clientSideValidErr')) {
                $('#email').after('<p class="clientSideValidErr mt-2 text-sm text-red-600 dark:text-red-500" role="alert">Please enter a valid email address</p>');
            }
            return false;
        } else {
            return true;
        }
    }

    function isValidEmail(email) {
        emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        return emailRegex.test(email);
    }

    function isValidMessageField() {
        var message = $('#message').val();
        if (!message || !isValidMessage(message)) {
            $('#message').css('border-color', 'rgb(240, 82, 82)');
            if (!$('#message').parent().parent().next().is('.clientSideValidErr')) {
                $('#message').parent().parent().after('<p class="clientSideValidErr mt-2 mb-4 text-sm text-red-600 dark:text-red-500" role="alert">Please enter your message (min. 3, max 500 characters)</p>');
            }
            return false;
        } else {
            return true;
        }
    }

    function isValidMessage(message) {
        return (message.length >= 3 && message.length <= 500);
    }

    $('input').on('input', function () {
        $(this).css('border-bottom-color', '');
        $(this).next('.clientSideValidErr').remove();
        $(this).parent().parent().next('.clientSideValidErr').remove();
    });
});
