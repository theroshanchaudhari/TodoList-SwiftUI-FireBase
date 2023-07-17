# Todo List iOS App

The Todo List iOS App is a powerful application built using SwiftUI and integrated with Firebase. This app allows users to create and manage their todo lists, provides authentication using email login, and stores user data securely using Firebase Firestore. This Readme file provides an overview of the app and instructions for setting up and running the project locally.

## Features

- **User Authentication**: The app utilizes Firebase Authentication to enable users to create accounts and log in using their email addresses. This ensures secure access to the app's features and personalized user experiences.

- **Todo List Management**: Users can create multiple todo lists, add tasks, mark them as completed, and delete tasks. The app provides a clean and intuitive user interface for managing todo lists efficiently.

- **Real-time Sync**: The app syncs data in real-time using Firebase Firestore. Any changes made on one device are instantly reflected on other devices logged in with the same account, ensuring seamless collaboration across multiple devices.

- **Email Login**: The app supports email-based login. Users can register and log in using their email addresses, and Firebase Authentication ensures the security of their credentials.

- **Profile Management**: Users can create and manage their profiles within the app. They can update their personal information, such as name, email, and profile picture, and view their profile details.

## Requirements

- Xcode (version 12 or later)
- Swift (version 5 or later)
- CocoaPods (for installing Firebase dependencies)

## Setup

Follow these steps to set up and run the app on your local machine:

1. Clone the repository from the [GitHub](https://github.com) repository where the code is hosted.

2. Open Terminal and navigate to the project's directory.

3. Run the following command to install the required dependencies using CocoaPods:

   ```bash
   pod install
   ```

4. Create a new project in the [Firebase console](https://console.firebase.google.com). Ensure that you enable Firebase Authentication and Firestore for your project.

5. Obtain the Firebase configuration file (`GoogleService-Info.plist`) for your project from the Firebase console.

6. In Xcode, navigate to the project directory and locate the `GoogleService-Info.plist` file. Drag and drop this file into the Xcode project navigator.

7. Open the `App.swift` file and update the following line with your Firebase project's bundle identifier:

   ```swift
   FirebaseApp.configure()
   ```

8. Build and run the app on the iOS simulator or a physical device using Xcode.

## Usage

Once the app is successfully set up and running, you can use it as follows:

1. On the app's login screen, select the option to create a new account or log in with an existing account.

2. If you choose to create a new account, provide a valid email address and password. If you log in with an existing account, enter your email and password.

3. Upon successful authentication, you will be redirected to the app's main interface.

4. In the app, you can create multiple todo lists by tapping on the "+" button. Add tasks to each list by tapping on the list and entering task details.

5. Mark tasks as completed by tapping on the checkbox next to each task. Delete tasks by swiping left on the task and tapping on the delete button.

6. The app automatically syncs data in real-time, allowing you to access your todo lists and tasks on multiple devices simultaneously.

7. Explore the app's features and functionalities, such as creating, editing, and deleting todo lists and tasks, and customize them according to your needs.

## Support and Feedback

For any support or feedback related to this Todo List iOS app, please contact the development team by opening an issue on
