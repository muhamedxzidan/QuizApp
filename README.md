# QuizApp

[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/muhamedxzidan/QuizApp)

A visually engaging and interactive quiz application UI built with Flutter. This project showcases a custom, modern design with a focus on reusable widgets, smooth animations, and a clean user experience. It's designed as a portfolio piece to demonstrate advanced Flutter UI development skills.

## 📱 Screenshots

| Welcome Screen | Levels Screen |
| :---: | :---: |
| <img src="https://github.com/user-attachments/assets/e1884f6c-1310-4c88-a04a-9660b126170d" alt="Welcome Screen" width="300"/> | <img src="https://github.com/user-attachments/assets/e653f426-edd7-481e-bf5e-c31224cf83e7" alt="Levels Screen" width="300" /> |
| <img src="https://github.com/user-attachments/assets/904cf4fa-0606-40ec-9d19-e0b26b51b35b" alt="Welcome Screen Content" width="300" /> | |

## ✨ Features

-   **Custom Welcome Screen:** A beautiful and engaging entry point with a custom-clipped header and brand imagery.
-   **Dynamic Level Selection:** An interactive screen displaying quiz levels in a unique hexagonal grid layout.
-   **Star-Based Progress:** A visual star rating system is implemented for each level to show player performance.
-   **Locked & Unlocked Levels:** UI states to visually distinguish between accessible and inaccessible levels.
-   **Reusable Widgets:** A collection of well-structured and reusable widgets for buttons, app bars, and custom UI elements.
-   **Custom Clippers:** Advanced UI rendering using `CustomClipper` for pentagonal and wavy shapes.
-   **Smooth Transitions:** Utilizes `page_transition` for elegant navigation between screens.

## 🛠️ Tech Stack

-   **Framework:** [Flutter](https://flutter.dev/)
-   **Language:** [Dart](https://dart.dev/)
-   **Key Packages:**
    -   [google_fonts](https://pub.dev/packages/google_fonts): For custom typography.
    -   [page_transition](https://pub.dev/packages/page_transition): For beautiful screen transitions.
    -   [flutter_gen_runner](https://pub.dev/packages/flutter_gen_runner): For type-safe asset generation.

## 📂 Project Structure

The project follows a clean and organized structure to promote scalability and maintainability.

```
lib/
├── models/         # Data models (e.g., LevelModel)
├── screens/        # Main screens of the application (Welcome, Home)
├── widgets/        # Reusable custom widgets
├── gen/            # Auto-generated asset references
├── main.dart       # Main application entry point
└── quizz_app.dart  # Root widget for the MaterialApp
```

### Key Custom Widgets

-   `WelcomeHeaderWidget`: Creates the header on the welcome screen using `HeaderClipperWidget` for a wavy bottom edge.
-   `LevelHexagonWidget`: A custom-shaped widget using `PentagonClipperWidget` to display each level, its lock status, and star rating.
-   `StarRatingWidget`: A composite widget to display the three-star rating for each level.

## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

-   Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
-   An editor like VS Code or Android Studio.

### Installation

1.  Clone the repository:
    ```sh
    git clone https://github.com/muhamedxzidan/QuizApp.git
    ```
2.  Navigate to the project directory:
    ```sh
    cd QuizApp
    ```
3.  Install the dependencies:
    ```sh
    flutter pub get
    ```
4.  Run the application:
    ```sh
    flutter run
    ```

## 📌 Note

This is a frontend UI project created for portfolio purposes. It does not include any backend logic for question fetching, scoring, or user authentication.
