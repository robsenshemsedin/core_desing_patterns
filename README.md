# Core Design Patterns
I built this app to practice core design patterns mentioned in the [Highly Subjective Roadmap to Flutter Development](https://github.com/olexale/flutter_roadmap). I used the [Flutter Design Patterns](https://github.com/mkobuolys/flutter-design-patterns?tab=readme-ov-file) application built by [Mangirdas Kazlauskas](https://github.com/mkobuolys)
 as a reference. In this project, I have covered 4 core design patterns from the roadmap:   `Decorator`, `Builder`, `Factory Method` and `Abstract Factory`.

# Features:
**Decorator Pattern**: 
The Decorator design pattern allows us to attach additional responsibilities to an object dynamically. Instead of relying on subclassing, decorators provide a flexible way to extend functionality.

In my case, I’ve applied this pattern to create a Flutter developer job title and annual salary determiner based on their skills. Imagine being able to add new skills at runtime and adjust the developer’s title and salary seamlessly! Without the Decorator pattern, we’d need to create new classes or mixins every time we introduce a new skill. This approach wouldn’t allow us to modify skills or developer attributes dynamically.

![decorator](https://github.com/robsenshemsedin/core_desing_patterns/assets/91184071/058e157b-f1b3-4db7-a29c-4a447e02832f)

**Builder pattern**: 

This pattern aims to separate the construction of a complex object from its representation. By doing so, we can use the same construction process to create different representations.

In my case, I’ve applied this pattern to build the Coffee object. Without the Builder pattern, the Coffee class would end up with numerous parameters, leading to complex code. Imagine handling multiple switch or if statements to return different coffee objects based on various parameters. Additionally, whenever we introduce a new coffee type or remove an existing one from our app, we risk violating the Open-Closed principle. This principle suggests that code should be open for extension (allowing new features) while remaining closed for modification (keeping existing code stable).

So, how does the Builder pattern help? We separate the construction process of the coffee object from the Coffee class itself. Instead, we create multiple builders that extend the CoffeeBuilder class. Each builder encapsulates the logic for constructing specific coffee types—such as Mocha, Cappuccino, and Americano.

![builder](https://github.com/robsenshemsedin/core_desing_patterns/assets/91184071/320f3511-c290-4bb5-8712-ab98dc0afb78)

**Factory Method**: 

Imagine we have an app that provides different intro page UIs based on the user’s age group. Currently, we have users in three age groups: Children, Young Adults, and Adults. The straightforward approach is to create an IntroPage class with a method called getIntroPage. This method uses a switch or if-else statement to return the relevant intro page UI based on the user’s age group.

However, as our app gains popularity among elderly users, we want to include a new intro page with a different UI specifically for this age group. The simple solution would be to add a new case in the switch statement or an if-else block in the IntroPage class getIntroPage method. But here’s the catch: this approach violates the Open-Closed Principle.

The Open-Closed Principle states that code should be “open for extension” (allowing new functionality) and “closed for modification” (existing code remains stable). Our current implementation frequently modifies the getIntroPage method whenever we add or remove an age group, which goes against this principle.

So, what’s the better solution? Enter the Factory Method Pattern.

The Factory Method pattern defines an interface for creating objects but lets subclasses decide which class to instantiate. Here’s how we’ll do it:

- We’ll create an abstract class named IntroCreator.
- This class will have an abstract method called introCard, which returns a Widget.
- Whenever we need to add or remove an intro page, we’ll simply add or remove a subclass that extends IntroCreator and overrides the introCard method to return unique Intro page UI for each age group.
  
By following the Factory Method Pattern, we achieve code flexibility, maintainability, and adherence to the Open-Closed Principle.  

![factory_method](https://github.com/robsenshemsedin/core_desing_patterns/assets/91184071/f39fc340-3ced-4d7f-9800-9f17d4a0bb0a)

**Abstract Factory Design Pattern**: 

Imagine having an app that tailors its intro pages based on the user’s age group. But wait, there’s more! Our app goes the extra mile by offering multiple intro page options for each age group: animated intros and default intros. For instance, an adult user can enjoy both an animated intro and a default one. 

To achieve this, we turn to the Abstract Factory pattern.  This pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes. It’s like having a toolkit for crafting intro pages! 

By using the Abstract Factory, we uphold the Open-Closed principle. This principle encourages code to be “open for extension” (allowing new features) while remaining “closed for modification” (keeping existing code stable).

![abstract_factory](https://github.com/robsenshemsedin/core_desing_patterns/assets/91184071/bf2a5f6e-6b21-4922-b350-5a6e6073e809)

# Installation:
1. Clone the repository.
2. Navigate to the project directory.
3. Run `flutter pub get` to install dependencies.
4. Start the app with `flutter run`.

# Contributing
Contributions are welcome! If you'd like to contribute to PicTraslate, please follow these steps:

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request.
