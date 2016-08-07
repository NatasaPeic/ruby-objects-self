class MethodChainer
    attr_reader :content

    def initialize(str)
        @content = str
    end

    def reverse!
        @content = @content.reverse()
        self
        # self -- notice the difference when commented out
        # What is returned?
    end

    def caps!
        @content = @content.upcase()
        self
    end

    def double!
       @content += @content
       self
    end
end

# with self within reverse
# ~/wdi/training/ruby-objects-self (training)$ pry
# [1] pry(main)> require_relative 'lib/method_chainer.rb'
# => true
# [2] pry(main)> new = MethodChainer.new("Natasa")
# => #<MethodChainer:0x007fb054b816e8 @content="Natasa">
# [3] pry(main)> new.reverse!
# => #<MethodChainer:0x007fb054b816e8 @content="asataN">
# [4] pry(main)>




# string = MethodChainer.new("apple")

# pry
# pry(main)> require_relative 'lib/method_chainer.rb'
# => true
# [9] pry(main)> string = MethodChainer.new("something")
# => #<MethodChainer:0x007ffbf0c68bf0 @content="something">
# [13] pry(main)> string.double!
# => #<MethodChainer:0x007ffbf0c68bf0 @content="somethingsomething">
# [14] pry(main)> string.double!.caps!
# => #<MethodChainer:0x007ffbf0c68bf0 @content="SOMETHINGSOMETHINGSOMETHINGSOMETHING">
# [16] pry(main)> string.reverse!
# => "GNIHTEMOSGNIHTEMOSGNIHTEMOSGNIHTEMOS"

# new = MethodChainer.new("something")
# => #<MethodChainer:0x007ffbf0e2bbb8 @content="something">
# [22] pry(main)> new.reverse!
# => "gnihtemos"
# [23] pry(main)>
# [24] pry(main)> new.double!.reverse!
# => "somethingsomething"
# [25] pry(main)> new
# => #<MethodChainer:0x007ffbf0e2bbb8 @content="somethingsomething">
# [26] pry(main)> new.double!.caps!
# => #<MethodChainer:0x007ffbf0e2bbb8 @content="SOMETHINGSOMETHINGSOMETHINGSOMETHING">
# [27] pry(main)> new
# => #<MethodChainer:0x007ffbf0e2bbb8 @content="SOMETHINGSOMETHINGSOMETHINGSOMETHING">
# [28] pry(main)> new.caps!.reverse!
# => "GNIHTEMOSGNIHTEMOSGNIHTEMOSGNIHTEMOS"
# [29] pry(main)>

# [29] pry(main)> new.caps!.reverse!.double!
# NoMethodError: undefined method `double!' for "SOMETHINGSOMETHINGSOMETHINGSOMETHING":String
# from (pry):28:in `__pry__'
# [30] pry(main)>




# caps! gives us an instance of an object
# reverse returns evaluation, no self, it gives us a string



# new = MethodChainer.new("apple")
# => #<MethodChainer:0x007fa9e2323eb0 @content="apple">
# [8] pry(main)> new.caps!
# => #<MethodChainer:0x007fa9e2323eb0 @content="APPLE">
# [9] pry(main)> new.double!
# => #<MethodChainer:0x007fa9e2323eb0 @content="APPLEAPPLE">
# [10] pry(main)> new.reverse!
# => "ELPPAELPPA"
# [11] pry(main)>



# class FullCat
# [1] pry(main)*   def self.mouse
# [1] pry(main)*     puts "Yes"
# [1] pry(main)*   end
# [1] pry(main)*   def escape
# [1] pry(main)*     puts "No"
# [1] pry(main)*   end
# [1] pry(main)* end
# => :escape
# [2] pry(main)> newCat = FullCat.new
# => #<FullCat:0x007feb2c1e3510>
# [3] pry(main)> newCat.escape
# No
# => nil
# [4] pry(main)> newCat.mouse
# NoMethodError: undefined method `mouse' for #<FullCat:0x007feb2c1e3510>
# from (pry):11:in `__pry__'
# [5] pry(main)> FullCat.mouse
# Yes
# => nil
