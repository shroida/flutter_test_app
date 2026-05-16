# Flutter Testing & Clean Architecture Practice App

## 📌 Overview

This project is a simple **Counter App** built with Flutter to practice professional software development concepts including:

- Unit Testing (`flutter_test`)
- Widget Testing
- Mocking (`mockito`)
- BLoC/Cubit Testing (`bloc_test`)
- Clean Architecture (Domain / Data / Presentation)
- Use Cases & Repository Pattern
- Code Coverage (`lcov`)

---

## 🎯 Project Goal

The goal of this project is to learn how to structure and test a Flutter application like a real production app.

### You will learn how to:

- Separate business logic from UI
- Write unit and widget tests
- Mock dependencies
- Test BLoC/Cubit logic
- Measure test coverage

---

## 🧱 Architecture
      lib/
      │
      ├── core/
      │
      ├── features/
      │ └── counter/
      │ ├── data/
      │ │ ├── datasources/
      │ │ ├── models/
      │ │ └── repositories/
      │ │
      │ ├── domain/
      │ │ ├── entities/
      │ │ ├── repositories/
      │ │ └── usecases/
      │ │
      │ └── presentation/
      │ ├── cubit/
      │ └── pages/
      │
      └── main.dart


      
---

## 🧪 Testing Stack

- `flutter_test` → unit & widget testing  
- `mockito` → mocking dependencies  
- `build_runner` → generate mock classes  
- `bloc_test` → testing Cubit/BLoC logic  
- `lcov` → coverage reports  

---

## 🚀 Features

- Counter increment / decrement
- Cubit state management
- Repository abstraction
- Use case layer
- Fully testable architecture


