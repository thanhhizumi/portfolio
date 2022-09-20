# pimspoints

* Generate localized keys
Command: flutter pub run easy_localization:generate -S "assets/localization" -f keys -o locale_keys.g.dart

* Generate JsonSeriable
Command: flutter pub run build_runner build --delete-conflicting-outputs

Hive Adapter: 
flutter packages pub run build_runner build

#Web
flutter build web --web-renderer canvaskit

//Build android app:
flutter build appbundle --release

//Upgrade version
flutter pub upgrade --major-versions