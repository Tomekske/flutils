# Features

- [x] [Utils](#utils)
  - Toast


# Utils
A collection of utility classes that are used in the application.

```dart
import 'package:utils/utils.dart';
```

- [Toast](#toast)

## Toast
A facade class that contains the toast methods for the Fluent UI and Material toast.

### Constructor
The constructor takes in a BuildContext as a parameter.

```dart
final toast = Toast(context);
```


### Methods
- info(String message)
- success(String message)
- warning(String message)
- error(String message)

```dart
Toast(context).info("Info message");
Toast(context).success("Success message");
Toast(context).warning("Warning message");
Toast(context).error("Error message");
```