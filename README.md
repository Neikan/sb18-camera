<h1 align="center">About</h1>

# Run project
## - Android, iOS:
```sh
flutter run lib/main.dart
```

<br />

# Run sorting imports
```sh
flutter pub run import_sorter:main
```

<br />

# Generate files
#### Models and etc.:
```sh
flutter packages pub run build_runner build --delete-conflicting-outputs
```

<br />

# Модуль 18. Media, cards, webview

#### Задание

1. Реализовать приложение, которое использует камеру устройства.

2. В приложении должно быть два экрана, переключаться между которыми можно с помощью BottomNavigationBar.

3. Первый экран должен отображать живое изображение камеры и кнопку «Сделать снимок».

4. Второй экран должен содержать галерею сделанных снимков в виде списка или GridView.

5. Хранить изображения на диске устройства необязательно, и они могут очищаться при закрытии приложения.
