import 'package:shared_preferences/shared_preferences.dart';
const String UserEmail = 'UserEmail';
const String UserFirstName = 'UserFirstName';
const String UserLastName = 'UserLastName';
const String UserPassword = 'UserPassword';
const String UserContact = 'UserContact';
const String Logged = 'Logged';
const String Image = 'Image';
const String ImageFileName = 'ImageFileName';
Future<String> getEmail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(UserEmail) ?? null;
}
Future<void> setImage(String base64Image) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString(Image, base64Image) ;
}
Future<String> getImage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(Image) ?? null;
}
Future<void> setImageFileName(String fileName) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString(ImageFileName,fileName) ;
}
Future<String> getImageFileName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(ImageFileName) ?? null;
}
Future<String> getFirstName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(UserFirstName) ?? null;
}
Future<String> getLastName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(UserLastName) ?? null;
}
Future<int> getContact() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getInt(UserContact) ?? null;
}
Future<String> getPassword() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(UserPassword) ?? null;
}
Future<void> setContact(int contact) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setInt(UserContact,contact) ;
}
Future<void> setFirstName(String fname) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString(UserFirstName,fname) ;
}
Future<void> setLastName(String lname) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString(UserLastName,lname) ;
}
Future<void> setPassword(String pd) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString(UserPassword,pd) ;
}
Future<void> setEmail(String email) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString(UserEmail,email) ;
}
Future<void> setLoginStatus(bool logged) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setBool(Logged,logged) ;
}

Future<bool> getLoginStatus() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool(Logged)==null ? false :  prefs.getBool(Logged);


}
