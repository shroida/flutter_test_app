# Flutter Testing & Clean Architecture Practice App

## This project is a simple Counter App built with Flutter to practice professional software development concepts including:

Unit Testing (flutter_test)
Widget Testing
Mocking (mockito)
BLoC/Cubit Testing (bloc_test)
Clean Architecture (Domain / Data / Presentation)
Use Cases & Repository Pattern
Code Coverage (lcov)
Project Goal

The goal of this project is to learn how to structure and test a Flutter application like a real production app.

You will learn how to:

Separate business logic from UI
Write unit and widget tests
Mock dependencies
Test BLoC/Cubit logic
Measure test coverage

## 🧱 Architecture

The project follows Clean Architecture:

      lib/
      │
      ├── core/
      │
      ├── features/
      │   └── counter/
      │       ├── data/
      │       │   ├── datasources/
      │       │   ├── models/
      │       │   └── repositories/
      │       │
      │       ├── domain/
      │       │   ├── entities/
      │       │   ├── repositories/
      │       │   └── usecases/
      │       │
      │       └── presentation/
      │           ├── cubit/
      │           └── pages/
      │
      └── main.dart


---

## 🧪 Testing Stack

This project uses:

### ✔ Flutter Testing
- `flutter_test` → unit & widget testing

### ✔ Mocking
- `mockito` → mocking dependencies  
- `build_runner` → generate mock classes  

### ✔ State Management Testing
- `bloc_test` → testing Cubit/BLoC logic  

### ✔ Coverage
- `lcov` → generate test coverage reports  

---

## 🚀 Features

- Simple counter (increment / decrement)
- Cubit state management
- Repository abstraction
- Use case layer (domain logic)
- Fully testable architecture

---

## 🛠 Getting Started

### 1. Install dependencies
```bash
flutter pub get
