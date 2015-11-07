// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//= require jquery

    $(document).ready(function(){
        // only show reg form if reward is selected!
        $(".list-group input").change(function(){
            $("#sponsor_subscription_type_id").val($(this).val());

            $("#sponsor-register-form").show();
        })
    })