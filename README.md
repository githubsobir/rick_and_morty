Rick and Morty

Приложение Rick and Morty — это мобильное приложение, написанное на Flutter с использованием Clean Architecture, которое предоставляет информацию о персонажах, эпизодах и локациях популярного анимационного сериала Rick and Morty.
Приложение позволяет пользователям: просматривать персонажей, добавлять их в избранное и работать с данными оффлайн. (Иконки приложения также были изменены)
Особенности
Список персонажей (с пагинацией)
Просмотр деталей персонажа
Список избранного
Функция сортировки избранного (по имени, статусу, локации)
Хранение данных оффлайн (с помощью Hive)
Проверка состояния интернета
Технологии и пакеты

Flutter SDK: ^3.10.0
Dart SDK: ^3.10.0
Flutter Bloc / Cubit: ^9.1.1
AutoRoute: ^11.1.0
Hive CE & Hive CE Flutter: ^2.16.0 / ^2.3.3
Dio: ^5.9.0
Injectable + GetIt: ^2.7.1 / ^9.2.0
Freezed + Freezed Annotation: ^3.2.4 / ^3.1.0
Json Serializable + Json Annotation: ^6.11.3 / ^4.9.0
Dartz (функциональное программирование): ^0.10.1
Cached Network Image: ^3.4.1
Internet Connection Checker Plus: ^2.9.1
Flutter ScreenUtil: ^5.9.3

Структура Clean Architecture
lib/
├─ core/            # API, тема, DI, утилитарные функции
├─ features/        # Каждая фича в отдельной папке: characters, favourites
│ ├─ data/          # Источники данных, модели, реализация репозиториев
│ ├─ domain/        # Сущности, use cases, контракты репозиториев
│ └─ presentation/  # UI, Bloc/Cubit, экраны, виджеты
├─ main.dart        # Точка входа в приложение


Назначение слоев:

Presentation: UI и управление состоянием (Cubit/Bloc)
Domain: Бизнес-логика и UseCase
Data: Вызовы API, локальное хранилище (Hive), реализация репозиториев

Установка и запуск
Клонирование репозитория:
git clone https://github.com/githubsobir/rick_and_morty.git
cd rick_and_morty
