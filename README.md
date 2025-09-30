# 🕉️ Namah Counter - नमः

<div align="center">

![Namah Counter](https://img.shields.io/badge/Namah-नमः-orange?style=for-the-badge)
![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

**A Sacred Digital Counter App for Spiritual Practice (Jap Mala)**

_Transform your spiritual journey with this beautifully crafted counter app designed for mantra chanting and prayer counting_

[📱 Features](#-features) • [🏗️ Architecture](#️-architecture) • [🚀 Setup](#-getting-started) • [📸 Screenshots](#-screenshots) • [🤝 Contributing](#-contributing)

---

</div>

## 📖 About

**Namah (नमः)** is a sacred digital counter application built with Flutter, designed specifically for spiritual practitioners who engage in mantra chanting, prayer counting, and meditation practices. The app combines traditional spiritual elements with modern mobile technology, offering a serene and focused environment for your devotional practices.

### ✨ Why Namah?

- **🙏 Spiritual Focus**: Designed specifically for Hindu, Buddhist, and Sikh spiritual practices
- **🎨 Sacred Aesthetics**: Beautiful orange and golden yellow color scheme inspired by traditional spiritual art
- **🕉️ Cultural Authenticity**: Proper Devanagari script rendering and culturally appropriate terminology
- **📱 Modern Experience**: Clean, intuitive interface with smooth animations and transitions
- **💾 Persistent Memory**: Never lose your progress - all data is saved automatically

---

## 🌟 Features

### 🔥 Core Features

| Feature                 | Description                                                       |
| ----------------------- | ----------------------------------------------------------------- |
| **🕉️ Sacred Landing**   | Beautiful auto-transitioning landing page with "नमः"              |
| **📿 Mantra Selection** | Choose from 14+ pre-loaded sacred mantras or add your own         |
| **🔢 Digital Counter**  | Square-rounded counter with smooth animations and haptic feedback |
| **💾 Auto-Save**        | Automatic progress saving using SharedPreferences                 |
| **🔄 Smart Reset**      | Confirmation dialog to prevent accidental resets                  |
| **➕ Custom Mantras**   | Add unlimited personal mantras that persist forever               |

### 🎯 Advanced Features

- **🔔 Smart Hints**: Helpful suggestions with "don't show again" option
- **🌊 Smooth Animations**: Elegant transitions between screens and interactions
- **📱 Responsive Design**: Works perfectly on phones and tablets
- **🎨 Sacred UI/UX**: "जप" (Jap) button with spiritual terminology throughout
- **🌐 Multilingual**: Hindi and English text support with proper Unicode rendering
- **⚡ Fast Performance**: Optimized with Clean Architecture and Riverpod

### 📿 Pre-loaded Sacred Mantras

The app comes with these traditional mantras:

- **ॐ नमः शिवाय** (Om Namah Shivaya)
- **राम राम** (Ram Ram)
- **ॐ गण गणपतये नमः** (Om Gan Ganapataye Namah)
- **हरे राम हरे राम राम राम हरे हरे हरे कृष्ण हरे कृष्ण कृष्ण कृष्ण हरे हरे** (Hare Rama Hare Krishna)
- **वाहेगुरु** (Waheguru)
- **बुद्धं शरणं गच्छामि** (Buddham Sharanam Gacchami)
- _...and 8+ more sacred mantras_

---

## 🏗️ Architecture

Built with **Clean Architecture** principles for maintainability, testability, and scalability:

```
📁 lib/
├── 🎯 main.dart                    # App entry point
├── 🎨 core/
│   └── theme/app_theme.dart        # Sacred color scheme & typography
├── 💾 data/
│   ├── datasources/               # SharedPreferences implementation
│   └── repositories/              # Repository implementations
├── 🏢 domain/
│   ├── entities/                  # Business entities (Counter, etc.)
│   ├── repositories/              # Repository interfaces
│   └── usecases/                  # Business logic
└── 📱 presentation/
    ├── pages/                     # Screens (Landing, Selection, Counter)
    ├── providers/                 # Riverpod state management
    └── widgets/                   # Reusable UI components
```

### 🛠️ Technologies Used

- **🦋 Flutter 3.10+** - UI Framework
- **🎯 Dart 3.0+** - Programming Language
- **🔄 Riverpod 2.4+** - State Management
- **💾 SharedPreferences** - Local Data Persistence
- **🎨 Google Fonts** - Typography (Devanagari & Latin)
- **✅ Flutter Test** - Unit & Widget Testing

### 📐 Design Patterns

- **🏗️ Clean Architecture** - Separation of concerns
- **🎯 Repository Pattern** - Data access abstraction
- **🔄 Provider Pattern** - State management with Riverpod
- **🎨 Material Design** - UI components with custom theming

---

## 🚀 Getting Started

### 📋 Prerequisites

Before running this project, make sure you have:

- **Flutter SDK** (3.10.0 or higher) - [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Dart SDK** (3.0.0 or higher) - Comes with Flutter
- **VS Code** with Flutter extension - [Setup Guide](https://flutter.dev/docs/get-started/editor/vscode)
- **Android Studio** or **Xcode** for device/emulator setup

### 📱 Installation & Setup

#### 1️⃣ Clone the Repository

```bash
git clone https://github.com/yourusername/namah-counter.git
cd namah-counter
```

#### 2️⃣ Open in VS Code

```bash
code .
```

Or manually:

1. Open **VS Code**
2. File → Open Folder → Select `namah-counter` folder
3. VS Code will detect it's a Flutter project

#### 3️⃣ Install Dependencies

In VS Code terminal (`` Ctrl+` ``):

```bash
flutter pub get
```

#### 4️⃣ Verify Setup

```bash
flutter doctor
```

Ensure all checkmarks are green ✅

#### 5️⃣ Run the App

**Option A: VS Code (Recommended)**

1. Open `lib/main.dart`
2. Press `F5` or click **Run → Start Debugging**
3. Select your device/emulator

**Option B: Terminal**

```bash
flutter run
```

**Option C: Specific Device**

```bash
# List available devices
flutter devices

# Run on specific device
flutter run -d <device-id>
```

### 🔧 VS Code Development Tips

#### Essential Extensions:

- **Flutter** (by Dart Code) - Core Flutter support
- **Dart** (by Dart Code) - Dart language support
- **Flutter Widget Snippets** - Quick widget creation
- **Awesome Flutter Snippets** - Advanced code snippets

#### Useful VS Code Shortcuts:

- `Ctrl+Shift+P` → Flutter: Hot Reload
- `Ctrl+Shift+P` → Flutter: Hot Restart
- `F5` - Start debugging
- `Shift+F5` - Stop debugging
- `Ctrl+F5` - Run without debugging

#### Debug Configuration:

VS Code will auto-create `.vscode/launch.json`. Customize if needed:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "namah_counter",
      "request": "launch",
      "type": "dart",
      "program": "lib/main.dart"
    }
  ]
}
```

---

## 📸 Screenshots

> _Add screenshots here showing the app flow_

<div align="center">

|            Landing Screen            |            Mantra Selection             |           Counter Screen            |
| :----------------------------------: | :-------------------------------------: | :---------------------------------: |
| ![Landing](screenshots/landing.png)  | ![Selection](screenshots/selection.png) | ![Counter](screenshots/counter.png) |
| Beautiful "नमः" with auto-navigation |   Sacred mantras with custom addition   |  Jap counter with selected mantra   |

</div>

---

## 🧪 Testing

### Run Tests

```bash
# All tests
flutter test

# Specific test file
flutter test test/widget_test.dart

# With coverage
flutter test --coverage
```

### Test Structure

- **📋 Unit Tests** - Business logic validation
- **🖼️ Widget Tests** - UI component testing
- **🔄 Integration Tests** - Full app flow testing

---

## 🚧 Project Status

### ✅ Completed Features

- [x] Landing page with auto-navigation
- [x] Mantra selection with pre-loaded options
- [x] Custom mantra addition & persistence
- [x] Counter with jap functionality
- [x] Reset with confirmation
- [x] Hint system with preferences
- [x] Responsive design
- [x] Clean architecture implementation

### 🔄 In Progress

- [ ] Dark theme support
- [ ] Export counter history
- [ ] Audio feedback options
- [ ] Multiple counter sessions

### 💡 Future Enhancements

- [ ] Cloud sync across devices
- [ ] Timer-based sessions
- [ ] Progress analytics
- [ ] Widget support
- [ ] Wear OS companion app

---

## 📂 Project Structure

<details>
<summary>📁 Detailed File Structure</summary>

```
lib/
├── main.dart
├── core/
│   └── theme/
│       └── app_theme.dart
├── data/
│   ├── datasources/
│   │   ├── counter_local_data_source.dart
│   │   └── mantra_local_data_source.dart
│   └── repositories/
│       ├── counter_repository_impl.dart
│       └── mantra_repository_impl.dart
├── domain/
│   ├── entities/
│   │   └── counter.dart
│   └── repositories/
│       ├── counter_repository.dart
│       └── mantra_repository.dart
└── presentation/
    ├── pages/
    │   ├── landing_page.dart
    │   ├── mantra_selection_page.dart
    │   └── counter_page.dart
    ├── providers/
    │   ├── counter_provider.dart
    │   └── mantra_provider.dart
    └── widgets/
        ├── counter_display.dart
        ├── increment_button.dart
        ├── reset_confirmation_dialog.dart
        ├── hint_dialog.dart
        └── add_mantra_dialog.dart
```

</details>

---

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help:

### 🌟 Ways to Contribute

- 🐛 **Bug Reports** - Found an issue? Let us know!
- 💡 **Feature Requests** - Have ideas? We'd love to hear them!
- 🔧 **Code Contributions** - Submit PRs for fixes and features
- 📖 **Documentation** - Help improve our docs
- 🌍 **Translations** - Add support for more languages

### 📝 Contribution Guidelines

1. **🍴 Fork** the repository
2. **🌿 Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **✅ Commit** changes (`git commit -m 'Add amazing feature'`)
4. **📤 Push** to branch (`git push origin feature/amazing-feature`)
5. **🔄 Open** a Pull Request

### 🧹 Code Standards

- Follow Flutter/Dart style guide
- Write tests for new features
- Update documentation as needed
- Use meaningful commit messages

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

```
MIT License - Feel free to use this project for personal and commercial purposes
```

---

## 🙏 Acknowledgments

- **🕉️ Hindu Scriptures** - For the sacred mantras and spiritual inspiration
- **📱 Flutter Team** - For the amazing framework
- **🎨 Material Design** - For the design principles
- **👥 Community** - For feedback and contributions

---

## 💬 Connect With Us

<div align="center">

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/yourusername)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/yourusername)
[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/yourusername)

**Made with ❤️ and 🙏 for the spiritual community**

_May your spiritual practice bring you peace and enlightenment_ 🕉️

</div>

---

<div align="center">

### ⭐ If this project helped you in your spiritual journey, please give it a star!

[![GitHub stars](https://img.shields.io/github/stars/yourusername/namah-counter?style=social)](https://github.com/yourusername/namah-counter/stargazers)

</div>
