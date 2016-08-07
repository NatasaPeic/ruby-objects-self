# puts "In global scope, self is #{self}"
# In global scope, self is main
# => nil
# [2] pry(main)> class Person
# [2] pry(main)*   def whoami
# [2] pry(main)*     puts "In instance method, self is #{self}"
# [2] pry(main)*   end
# [2] pry(main)* end
# => :whoami
# [3] pry(main)> new = Person.new
# => #<Person:0x007fd8d9349180>
# [4] pry(main)> new.whoami
# In instance method, self is #<Person:0x007fd8d9349180>
# => nil


class My_class
  def self.my_method
    puts "Hello there!"
  end
end


=begin
My_class.my_method
Hello there!
=> nil
[7] pry(main)> new_instance_of_class = My_class.new
=> #<My_class:0x007f8ff29df060>

This will not work becausei my_method is a class method, not an instance method

[8] pry(main)> new_instance_of_class.my_method
NoMethodError: undefined method `my_method' for #<My_class:0x007f8ff29df060>
Did you mean?  method
from (pry):8:in `__pry__'
[9] pry(main)>
=end
