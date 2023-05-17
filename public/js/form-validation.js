$(document).ready(function () {
    $('#title').blur(function (e) {
        if (!validateForm()) e.preventDefault();
    });

    $('#message').blur(function (e) {
        if (!validateForm()) e.preventDefault();
    });

    $('#sendMessage').submit(function (e) {
        if (!validateForm()) e.preventDefault();
    });

    function validateForm() {
        isValidForm = (isValidTitleField() && isValidMessageField());
        disableSubmit(!isValidForm);
        return isValidForm;
    }

    function disableSubmit(invalid) {
        $(':input[type="submit"]').prop('disabled', invalid);
    }

    function isValidTitleField() {
        var title = $('#title').val();
        if (!title || !isValidName(title)) {
            $('#title').css('border-bottom-color', 'rgb(240, 82, 82)');
            if (!$('#title').next().is('.clientSideValidErr')) {
                $('#title').after('<p class="clientSideValidErr mt-2 text-sm text-red-600 dark:text-red-500" role="alert">Please enter a title (min. 3, max 60 characters)</p>');
            }
            return false;
        } else {
            return true;
        }
    }

    function isValidName(name) {
        return (name.length >= 3 && name.length <= 60);
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
