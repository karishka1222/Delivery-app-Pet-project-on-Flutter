# Delivery app

_Прочитать на другом языке: [English](README.md), [Русский](README.ru.md)_

## Описание проекта

Это мини-приложение создано по [туториалу](https://www.youtube.com/watch?v=rHIFJo4IbOE) для прокачки навыков на Flutter.

Реализованно приложение Delivery app, гдe можно создать аккаунт для нового пользователя или же войти в уже существующий аккаунт. После регистации пользователь видит все меню, которое есть в текущем ресторане. Есть возможность выбрать понравившееся блюдо, добавить к нему какие то ингредиенты. Далее после выбора желаемых блюд пользователь подтверждает заказ, вводит данные для оплаты и получает чек.

Все блюда и информация о них взяты из приложения "Вкусно и точка".

## Особенности

- Создание/Смена аккаунта.
- Панель с разделением на виды блюд.
- Добавление/Удаление блюд в корзину.
- Добавление дополнительных ингридиентов.
- Смена адреса.
- Добавление данных для оплаты.
- Итоговый чек заказа.
- Смена темы приложения.

## Демо версия

<img src="lib/images/delivery light mode.png" width="" />

<img src="lib/images/delivery dark mode.png" width="" />

## Установка проекта

1. [Установка Flutter](https://docs.flutter.dev/get-started/install)

2. Клонирования репозитория
   `https://github.com/karishka1222/Delivery-app-Pet-project-on-Flutter.git`

3. Добавление зависимостей в проект

- `flutter pub get`
- `flutter pub add provider`
- `flutter pub add collection`
- `flutter pub add flutter_credit_card`
- `flutter pub add intl`
- `flutter pub add firebase_core`
- `flutter pub add firebase_auth`
- `flutter pub add cloud_firestore`

## Используемые фреймворки и технологии

<img src="https://img.shields.io/badge/Flutter%20-%2302569B.svg?&style=for-the-badge&logo=Flutter&logoColor=white" />

<img src="https://img.shields.io/badge/dart-%230175C2.svg?&style=for-the-badge&logo=dart&logoColor=white"/>

* Описание: Flutter - это фреймворк с открытым исходным кодом от Google для создания красивых, изначально скомпилированных мультиплатформенных приложений на основе единой кодовой базы.
* Ресурсы:
  * Официальный сайт: [Official Website](https://flutter.dev/)
  * Документация: [Documentation](https://docs.flutter.dev/)

<img src="https://img.shields.io/badge/firebase%20-%23039BE5.svg?&style=for-the-badge&logo=firebase"/>

* Описание: Firebase - набор инструментов и сервисов для разработки мобильных и веб-приложений от Google. С его помощью можно быстро развернуть бэкенд со своей серверной логикой, подключить базы данных и настроить авторизацию пользователей. Часто платформу используют для создания MVP и разработки при ограниченных ресурсах.
* Ресурсы:
  * Официальный сайт: [Official Website](https://firebase.google.com/)
  * Документация: [Documentation](https://firebase.google.com/docs?hl=ru)