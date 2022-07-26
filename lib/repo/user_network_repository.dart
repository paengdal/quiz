import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_first/constants/firestore_keys.dart';

import '../model/user_model.dart';

class UserNetworkRepository {
  Future attemptCreateUser(
      {required String userKey, required String email}) async {
    // 고민 : Future를 꼭 넣어야하는가?
    DocumentReference<Map<String, dynamic>> reference =
        FirebaseFirestore.instance.collection(COLLECTION_USERS).doc(userKey);

    final DocumentSnapshot documentSnapshot = await reference.get();

    if (!documentSnapshot.exists) {
      await reference.set(UserModel.getMapForCreateUser(email));
    }
  }
}

UserNetworkRepository _userNetworkRepository = UserNetworkRepository();
UserNetworkRepository get userNetworkRepository => _userNetworkRepository;
