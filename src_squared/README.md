# Source Code Squared

> Generating source code from source code

## Adding `freezed` and `json_serializable`

```shell
flutter pub add freezed_annotation
flutter pub add --dev build_runner freezed
flutter pub add json_annotation
flutter pub add --dev json_serializable
```

## Adding `flutter_gen`

```shell
dart pub global activate flutter_gen
flutter pub add --dev flutter_gen_runner
```

## Adding assets

*Would have it been easier to just include these assets into the starter branch? Definitely.*

```shell
mkdir assets
curl --output assets/logo_flutter.png https://www.ideematic.com/wp-content/uploads/2020/07/flutter_logo.png
curl --output assets/logo_dart.png https://dwglogo.com/wp-content/uploads/2018/03/Dart_logo.png
```

### Registering assets in `pubspec.yaml`

Edit your `pubspec.yaml` so that it has this section:

```yaml
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  assets:
    - assets/
```

## Adding `Makefile`

```shell
touch Makefile
```

Paste this content into the file:

```makefile
# Generate code for all the packages with dynamic features
watch:
	@echo "==> 👀 Watching for changes in packages with dynamic features"
	@flutter pub run build_runner watch --delete-conflicting-outputs --verbose
```
 