import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_first/constants/firestore_keys.dart';
import 'package:quiz_first/repo/helper/transformers.dart';

import '../model/user_model.dart';

class UserNetworkRepository with Transformers {
  Future attemptCreateUser(
      {required String userKey, required String email}) async {
    // 고민 : Future를 꼭 넣어야하는가?
    DocumentReference<Map<String, dynamic>> documentReference =
        FirebaseFirestore.instance.collection(COL_USERS).doc(userKey);

    final DocumentSnapshot documentSnapshot = await documentReference.get();

    if (!documentSnapshot.exists) {
      await documentReference.set(UserModel.getMapForCreateUser(email));
    }
  }

  Stream<UserModel> getUserModelStream(String userKey) {
    return FirebaseFirestore.instance
        .collection(COL_USERS)
        .doc(userKey)
        .snapshots()
        .transform(toUser);
  }

  Future<UserModel> getUserModel({required String userKey}) async {
    DocumentReference<Map<String, dynamic>> documentReference =
        FirebaseFirestore.instance.collection(COL_USERS).doc(userKey);
    final DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await documentReference.get();
    UserModel userModel = UserModel.fromSnapshot(documentSnapshot);
    return userModel;
  }
}

UserNetworkRepository _userNetworkRepository = UserNetworkRepository();
UserNetworkRepository get userNetworkRepository => _userNetworkRepository;
