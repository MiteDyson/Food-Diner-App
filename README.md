
# Food Diner Delivery Application

Welcome to the **Food Diner Delivery Application**! This application is built using Flutter and Firebase, offering a modern and user-friendly platform for managing food delivery orders. The app supports both light and dark themes and includes a splash screen for a smooth user experience.

## Features

- **Firebase Authentication**: Secure user login and registration using Firebase Authentication.
- **Firebase Database**: Efficient management of restaurant orders and user data with Firebase Realtime Database.
- **Light and Dark Themes**: Toggle between light and dark mode for a personalized user experience.
- **Splash Screen**: A sleek splash screen for enhanced app presentation.
- **Addons**: Option to select additional items or extras with your orders.
- **Cart Management**: Easy management of items in your cart before placing an order.
- **Delivery Address Management**: Ability to add, update, and change your delivery address.
- **Average Delivery Time**: View the estimated delivery time based on the restaurant and location.
- **Driver Details**: Track the delivery driver’s details including name, contact, and location.
- **Payment Screen**: Secure payment processing for completing your orders.

## Demo Video

Watch the demo video to see the app in action:

[Demo Video](https://github.com/user-attachments/assets/052ff39b-8c88-4012-8144-5e243b8a38b7)


## Screenshots

Below are some screenshots of the app:

1. **Opening UI Screens**
   ![UI Screens](https://github.com/user-attachments/assets/9242ec3a-69b6-4809-aa61-3b546a38f68b)

2. **Home Screens**
   ![Home Screens](https://github.com/user-attachments/assets/4f315b3d-07b6-4d8f-9f6f-36a68ef9bf7d)

3. **Dark Theme Home Screen & Cart Management**
   ![*Home Screen & Cart Management](https://github.com/user-attachments/assets/2bbf837b-a3e7-4ee7-b6c8-0ddc63f9c6da)

4. **Address & Payment Screen**
   ![Address & Payment Screen](https://github.com/user-attachments/assets/abc8cd20-3a50-4d72-8796-0f846abb4214)

5. **Firebase Features Used**
   ![Build Features](https://github.com/user-attachments/assets/757ca183-a463-4732-af83-b9a71c37a1fc)


## Getting Started

### Prerequisites

- **Flutter SDK**: Ensure you have the latest version of Flutter installed. Follow the installation guide [here](https://flutter.dev/docs/get-started/install).
- **Visual Studio Code**: Install Visual Studio Code with the Flutter and Dart extensions.
- **Firebase Account**: Create a Firebase project and enable Firebase Authentication, Realtime Database, and Firebase Cloud Messaging (for notifications).

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/food-diner-delivery.git
   cd food-diner-delivery
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Set up Firebase**:
   - Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/).
   - Add an Android and/or iOS app to your Firebase project.
   - Download the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) and place it in the appropriate directory:
     - `android/app/` for `google-services.json`
     - `ios/Runner/` for `GoogleService-Info.plist`
   - Enable Firebase Authentication and Firebase Realtime Database in the Firebase Console.

4. **Configure Firebase in the project**:
   - Update the `android/build.gradle` and `android/app/build.gradle` files as per Firebase setup instructions.
   - Add the necessary Firebase dependencies in the `pubspec.yaml` file.

### Running the Application

1. **Run the app**:
   - For Android:
     ```bash
     flutter run
     ```
   - For iOS:
     ```bash
     flutter run
     ```

2. **Login or Register**:
   - Use Firebase Authentication to create an account or log in to the app.

3. **Browse and Add to Cart**:
   - Browse the restaurant menu, select items, add addons, and manage your cart before placing orders.

4. **Manage Delivery Address**:
   - Add or change your delivery address easily from within the app.

5. **Track Delivery**:
   - View the average delivery time and track your order with driver details.

6. **Secure Payment**:
   - Complete your orders using the secure payment screen.

7. **Switch Themes**:
   - Toggle between light and dark modes using the app's theme settings.

## Firebase Integration

- **Authentication**:
  - Firebase Authentication is used to handle user login and registration.
  - The app supports email and password authentication.

- **Realtime Database**:
  - Firebase Realtime Database is used for storing and retrieving restaurant orders, cart details, delivery addresses, and driver information.
  - Orders are linked to user accounts, ensuring personalized order management.

- **Cloud Messaging** (optional):
  - Firebase Cloud Messaging can be used for sending notifications about order status and delivery updates.

## Customization

### Themes

- The app supports light and dark themes.
- You can customize the themes in the `theme/` directory by editing `light_theme.dart` and `dark_theme.dart`.

### Splash Screen

- The splash screen is implemented using Flutter's `flutter_native_splash` package.
- Customize the splash screen by modifying the `pubspec.yaml` and editing the `splash_screen.dart` file.

## Acknowledgements

- Flutter - [https://flutter.dev/](https://flutter.dev/)
- Firebase - [https://firebase.google.com/](https://firebase.google.com/)
- Visual Studio Code - [https://code.visualstudio.com/](https://code.visualstudio.com/)
- Mitch Koko - [Youtube](https://www.youtube.com/@createdbykoko)
