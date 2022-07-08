class ValidationEmail {
  static final RegExp _emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  static String? Validationemail(email) {
    final _hasMatched = _emailRegex.hasMatch(email);
    if (!_hasMatched) {
      return 'please enter valid email';
    } else
      return null;
  }}
class ValidationPassword{
  static String? Validationpassword(name){
    RegExp regex = RegExp(r'[!0-9]');   if (name.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(name)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }
}