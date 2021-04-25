/*
Copyright 2021 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
import 'package:dahlia_backend/dahlia_backend.dart';
import 'package:flutter/material.dart';

class FeatureFlags extends ChangeNotifier {
  FeatureFlags() {
    _loadData();
  }

  //FeatureFlag Keys
  bool _useAcrylic = false;

  //Getter
  bool get useAcrylic => _useAcrylic;

  //Setter
  set useAcrylic(bool value) {
    _useAcrylic = value;
    notifyListeners();
    DatabaseManager.set("feature_useAcrylic", value);
  }

  //Load Values
  void _loadData() {
    useAcrylic = DatabaseManager.get("feature_useAcrylic") ?? _useAcrylic;
  }
}
