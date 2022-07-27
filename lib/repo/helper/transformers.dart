import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_first/model/user_model.dart';

class Transformers {
  final toUser = StreamTransformer<DocumentSnapshot<Map<String, dynamic>>,
      UserModel>.fromHandlers(
    handleData: (snapshot, sink) async {
      // 고민: 왜 async하는건지?
      sink.add(UserModel.fromSnapshot(snapshot));
    },
  );
}
