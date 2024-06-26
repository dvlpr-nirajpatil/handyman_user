import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:handyman_user/consts/firebase.dart';

class DBController {
  static var user;

  //created instance of db
  static FirebaseFirestore _db = FirebaseFirestore.instance;

  static getUserDetails({userid}) async {
    var query = _db.collection(DBCollections.customer).doc(userid);
    var response = await query.get();
    user = response.data();
    return user;
  }

  static storeUserDetails({email, pass, name, uid}) {
    _db.collection(DBCollections.customer).doc(uid).set(
      {
        'username': name,
        'email': email,
        'uid': uid,
        'registration_datetime': Timestamp.now()
      },
    );
  }
}
