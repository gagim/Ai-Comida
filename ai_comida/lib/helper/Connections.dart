import 'dart:async';

import 'package:connectivity/connectivity.dart';

class Connections{
  Future<bool> estaConectado() async {

    var connectivityResult = await (new Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }else{
      return false;
    }

  }
}

