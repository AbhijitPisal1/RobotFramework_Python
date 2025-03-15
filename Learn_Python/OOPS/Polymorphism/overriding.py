"""
Definition: Method overriding occurs when a subclass provides a specific implementation of a method that is
already defined in its superclass. This enables a subclass to customize or modify behaviors inherited from its parent
class.

# Use Cases:
# Customization: Allows subclasses to provide specific behavior for methods that are defined in the parent class.
# Polymorphism: It supports polymorphism, where a method can behave differently based on the object type that invokes it.
"""


class Animal:
    def sound(self):
        return "Some sound"


class Dog(Animal):
    def sound(self):
        return "Bark"


class Cat(Animal):
    def sound(self):
        return "Meow"


# Usage
def make_sound(animal):
    print(animal.sound())


dog = Dog()
cat = Cat()

make_sound(dog)  # Outputs: Bark
make_sound(cat)  # Outputs: Meow
