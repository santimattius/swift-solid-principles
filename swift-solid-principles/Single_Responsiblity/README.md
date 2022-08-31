# Single-Responsibility Principle

Let's begin with the single responsibility principle. As we might expect, this principle states that **a class should only have one responsibility. Furthermore, it should only have one reason to change**.

**How does this principle help us to build better software?** Let's see a few of its benefits:

 1. Testing – A class with one responsibility will have far fewer test cases.
 2. Lower coupling – Less functionality in a single class will have fewer dependencies.
 3. Organization – Smaller, well-organized classes are easier to search than monolithic ones.



```kotlin
class Vehicle(
    private val wheelCount: Int,
    private val maxSpeed: Int
) {
    fun print() {
        println("wheelCount: $wheelCount, maxSpeed:$maxSpeed")
    }
}
```

Apply this principle

```kotlin

data class Vehicle(
    val wheelCount: Int,
    val maxSpeed: Int
)

class VehiclePrinter {

    fun print(vehicle: Vehicle) = with(vehicle) {
        println("wheelCount: $wheelCount, maxSpeed:$maxSpeed")
    }
}

```
