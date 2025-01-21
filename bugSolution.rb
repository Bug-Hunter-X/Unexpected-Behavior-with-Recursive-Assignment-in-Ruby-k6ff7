```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    # Check for self-assignment before updating
    raise "Self-assignment detected" if new_value.equal?(self)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10

my_object.value = 20
puts my_object.value  # Output: 20

begin
  my_object.value = my_object # Raises an exception
rescue RuntimeError => e
  puts e.message # Output: Self-assignment detected
end
```