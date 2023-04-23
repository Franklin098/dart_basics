# Dart Basics

Basic exercises to learn Dart programming language.

### What is the difference between "final" and "const" ?

Final variables are created during the App Execution phase. Const variables are created during the App Construction Phase.

If I know that a value will NEVER change its value during the whole app -> use "const"
If we need to calculate a value at some time during the app life -> use "final"

**Please Go to each of the examples to get a demo of how the Dart Language works**

## Mixins

Let's Imagine a heriarquical class structure like this:

Animal
| Mammal
| Bird
| Fish

We can find some animals that are a mix of different attributes:

A "dolphin" is a Mammal but it can swim like a Fish.

A "bat" is a Mammal but it can fly like a Bird.

A "duck" is a Bird but it can swim like a Fish.

So instead of defining attributes like "swim" and "fly" in the Animal subclasses (Mammal, Bird, Fish), we can define them in a Mixin class and then use them in the classes that need them.

Read Article: https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
