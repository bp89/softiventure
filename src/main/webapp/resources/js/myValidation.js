jQuery.validator.setDefaults({
  debug: true,
  success: "valid"
});
$( "#contactForm" ).validate({
  rules: {
    phone: {
      required: true,
      number: true
    }
  }
});