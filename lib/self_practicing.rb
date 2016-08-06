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
