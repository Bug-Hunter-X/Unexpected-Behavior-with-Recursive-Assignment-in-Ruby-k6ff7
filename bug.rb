```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10

my_object.value = 20
puts my_object.value  # Output: 20

# This will cause an error in some cases
my_object.value = my_object # Recursive assignment, may lead to stack overflow depending on the object's structure
puts my_object.value
```