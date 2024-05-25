import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/firebase_ref.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/firebase/firebase_helper.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/notes.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/pooja_time.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/pooja_time_response.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/timing.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/repository/repo_helper.dart';

class PoojaTimeRepo extends GetxService with RepoHelperTwo<Notes, Timing> {
  final FirebaseHelper firebaseHelper;

  PoojaTimeRepo({
    required this.firebaseHelper,
  });

  Future<PoojaTimeResponse> getData() async {
    var qsOne = await firebaseHelper.getData(
      FirebaseRef.notesEN,
    );
     List<Notes> notesEN = await makeListRequest(qsOne, Notes.fromJson);
    var qsTwo = await firebaseHelper.getData(
      FirebaseRef.notesTA,
    );
     List<Notes> notesTA = await makeListRequest(qsTwo, Notes.fromJson);
    var qsThree = await firebaseHelper.getDataOrderBy(
      FirebaseRef.timingEN, FirebaseRef.order
    );
     List<Timing> timingEN = await makeListRequestTwo(qsThree, Timing.fromJson);
    var qsFour = await firebaseHelper.getDataOrderBy(FirebaseRef.timingTA, FirebaseRef.order);
    List<Timing> timingTA = await makeListRequestTwo(qsFour, Timing.fromJson);
    PoojaTime poojaTimeEN = PoojaTime(notes: notesEN, timing: timingEN);
    PoojaTime poojaTimeTA = PoojaTime(notes: notesTA, timing: timingTA);
    PoojaTimeResponse response =
        PoojaTimeResponse(en: poojaTimeEN, ta: poojaTimeTA);
    return response;
  }
}
