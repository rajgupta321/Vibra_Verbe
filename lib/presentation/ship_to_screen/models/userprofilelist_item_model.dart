import '../../../core/app_export.dart';
/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
 UserprofilelistItemModel({
  this.username,
  this.address,
  this.phoneNumber,
  this.id,
 }) {
  username = username  ??
      Rx("Priscekila");
  address = address  ??
      Rx("3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States");
  phoneNumber = phoneNumber  ??
      Rx("+99 1234567890");
  id = id  ?? Rx(""); }

Rx<String>? username;

Rx<String>? address;

Rx<String>? phoneNumber;

Rx<String>? id;

 }
