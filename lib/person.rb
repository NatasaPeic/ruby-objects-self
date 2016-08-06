# Define a Person class
class Person
  attr_reader :status

  def initialize
    @status = nil
  end

  def status=(new_status)
    @status = new_status

    # Side Effect of changing a Person's status is to say it
    %x{ say "Status changed to #{status}" }
  end

  def log_in
    self.status = 'now'
  end

  def log_out
    # Problem:
    # Will not call the setter method to and notify, or say, that the status
    # has changed!
    @status = 'offline'
  end
end


# require_relative 'lib/person.rb'
# => true
# [2] pry(main)> Natasa = Person.new
# => #<Person:0x007fbd55b9cae8 @status=nil>
# [3] pry(main)> Natasa.log_in
# => "now"
