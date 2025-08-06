## Node Backend

### Run:

```bash
node server.js
```

## Flutter Frontend

```bash
flutter pub get

// if using fvm

fvm flutter pub get
```

## Proto in Flutter

```bash
cd lib/proto
protoc --dart_out=grpc:. quiz.proto
```
