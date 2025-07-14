# JobTrackr Mobile

A modern Flutter application for tracking job applications, built with clean architecture and best practices. This app connects to a Laravel backend and provides a seamless experience for authenticated users to manage and monitor their job applications.

## Features
- Clean and scalable project structure
- Provider for state management
- Dio for robust HTTP networking
- Shared Preferences for secure local storage
- Modern UI with flutter_hooks, google_fonts, and flutter_easyloading
- Android & iOS support

## Tech Stack
- **Flutter** (latest stable)
- **State Management:** provider
- **HTTP Client:** dio
- **Local Storage:** shared_preferences
- **UI Kit:** flutter_hooks, flutter_easyloading, google_fonts
- **Backend:** Laravel 12 (REST API)

## Project Structure
```
lib/
├── core/         # App-wide utilities, themes, constants
├── models/       # Data models (User, Application, etc.)
├── services/     # API, storage, and business logic
├── providers/    # State management (Provider/ChangeNotifier)
├── screens/      # UI screens (Login, Home, etc.)
├── widgets/      # Reusable UI components
├── routes/       # Navigation and route management
└── main.dart     # App entry point
```

## Getting Started
1. **Clone the repository:**
   ```bash
   git clone https://github.com/HidayetHidayetov/jobtrackr-mobile.git
   cd jobtrackr-mobile
   ```
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Run the app:**
   - On emulator or real device:
     ```bash
     flutter run
     ```

## Contribution
- Please use feature branches and open pull requests for any changes.
- Follow the existing code style and structure.

---

> Designed and maintained with best practices for scalability and maintainability. 