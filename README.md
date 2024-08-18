# Delivery app

_Read this in other language: [English](README.md), [Русский](README.ru.md)_

## Project Description

This mini-application was created according to [tutorial](https://www.youtube.com/watch?v=rHIFJo4IbOE ) to improve skills on Flutter.

The Delivery app application has been implemented, where you can create an account for a new user or log in to an existing account. After registration, the user sees all the menus that are in the current restaurant. There is an opportunity to choose a dish you like, add some ingredients to it. Then, after selecting the desired dishes, the user confirms the order, enters the payment details and receives a receipt.

All dishes and information about them are taken from the application "Вкусно и точка".

## Feature List

- Creation/Change account.
- A panel with a division into types of dishes.
- Adding/Removing dishes to the cart.
- Adding additional ingredients.
- Change of address.
- Adding payment details.
- The final receipt of the order.
- Change the theme of the application.

## Demo

<img src="lib/images/delivery light mode.png" width="" />

<img src="lib/images/delivery dark mode.png" width="" />

## Project Installation

1. [Installing Flutter](https://docs.flutter.dev/get-started/install)

2. Cloning a repository
   `https://github.com/karishka1222/Delivery-app-Pet-project-on-Flutter.git`

3. Adding dependencies to a project

- `flutter pub get`
- `flutter pub add provider`
- `flutter pub add collection`
- `flutter pub add flutter_credit_card`
- `flutter pub add intl`
- `flutter pub add firebase_core`
- `flutter pub add firebase_auth`
- `flutter pub add cloud_firestore`

## Frameworks and technologies used

<img src="https://img.shields.io/badge/Flutter%20-%2302569B.svg?&style=for-the-badge&logo=Flutter&logoColor=white" />

<img src="https://img.shields.io/badge/dart-%230175C2.svg?&style=for-the-badge&logo=dart&logoColor=white"/>

* Description: Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.
* Resources:
  * Official Website: [Official Website](https://flutter.dev/)
  * Documentation: [Documentation](https://docs.flutter.dev/)

<img src="https://img.shields.io/badge/firebase%20-%23039BE5.svg?&style=for-the-badge&logo=firebase"/>

* Description: Firebase is a set of tools and services for the development of mobile and web applications from Google. With it, you can quickly deploy a backend with your own server logic, connect databases and configure user authorization. The platform is often used to create MVP and develop with limited resources.

* Resources:
  * Official Website: [Official Website](https://firebase.google.com/)
  * Documentation: [Documentation](https://firebase.google.com/docs?hl=ru)