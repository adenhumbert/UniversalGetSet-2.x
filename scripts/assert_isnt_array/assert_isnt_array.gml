/// @description assert_isnt_array(got, [msg])
/// @param got
/// @param  [msg]
//Assert that the gotten expression is not an array.
{
  if (!GMASSERT_MODE) exit;

  //Capture message argument
  var msg;
  switch (argument_count) {
    case 1:
      msg = "Non-array type assertion failed!";
    break;
    case 2:
      msg = argument[1];
    break;
    default:
      show_error("Expected 1 or 2 arguments, got " + string(argument_count) + ".", true);
    break;
  }
  
  //Check assertion
  if (is_array(argument[0])) {
    __gma_assert_error_raw__(msg, "Anything but an array", __gma_debug_value__(argument[0]));
  }
}
