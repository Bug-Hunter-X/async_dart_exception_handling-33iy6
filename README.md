# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient error handling in asynchronous operations using `async` and `await`.

The `bug.dart` file contains code that fetches data from an API.  The `try-catch` block only prints a generic error message. This is insufficient for debugging and user experience.

The `bugSolution.dart` file demonstrates improved error handling.  It provides more specific error handling based on the type of exception and provides better feedback to the user or logs.