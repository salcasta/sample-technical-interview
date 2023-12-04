=begin
birthday_cake.rb

It's your birthday! Yay! 🎂

Can you debug this BirthdayCake class in time to sing happy birthday? 🎶

Tip: Resolve the error messages before trying to make it work

Expected output:
Happy 10th Birthday!
Birthday cake with 10 blown out candles
Lighting candles...
Birthday cake with 10 lit candles
Singing happy birthday...
🎶Happy birthday to you, happy birthday to you🎶
Blowing out candles...
Birthday cake with 10 blown out candles

=end

require "active_support/all"

class BirthdayCake
  attr_accessor :age
  attr_accessor :lit

  def initialize(age)
    self.age = age
    self.lit = false
  end

  def candles_status
    if self.lit == true
      return "lit"
    else
      return "blown out"
    end
  end

  def greet
    "Happy #{self.age.ordinalize} Birdday!"
  end

  def light_candles
    self.lit = true
  end

  def sing
    "🎶Happy birthday to you, happy birthday to you🎶"
  end

  def blow_out_candles
    self.lit = false
  end

  def to_s
    "Birthday cake with #{self.age} #{candles_status} candles"
  end

  def BirthdayCake.celebrate(age)
    birthday_cake = BirthdayCake.new(age)
    puts birthday_cake.greet
    puts birthday_cake.to_s
    puts "Lighting candles..."
    birthday_cake.light_candles
    puts birthday_cake.to_s
    puts "Singing happy birthday..."
    puts birthday_cake.sing
    puts "Blowing out candles..."
    birthday_cake.blow_out_candles
    puts birthday_cake.to_s

    birthday_cake
  end
end

BirthdayCake.celebrate(10)


=begin

1st error
  birthday_cake.rb:53:in `celebrate': uninitialized constant BirthdayCake::Birthdaycake (NameError)

    birthday_cake = Birthdaycake.new(age)
                    ^^^^^^^^^^^^
  solution
  birthday_cake = BirthdayCake.new(age)

2nd error
  Happy 10th Birdday!
  Birthday cake with 10 blown out candles
  Lighting candles...

  birthday_cake.rb:58:in `celebrate': undefined method `light_candles' for #<BirthdayCake:0x00007f44f21ec650 @age=10, @lit=false> (NoMethodError)

    birthday_cake.light_candles
                 ^^^^^^^^^^^^^^
  solution
  create method

  def light_candles
    self.lit = true
  end

3rd error
  Happy 10th Birdday!
  Birthday cake with 10 blown out candles
  Lighting candles...
  Birthday cake with 10 lit candles
  Singing happy birthday...

  birthday_cake.rb:61:in `celebrate': undefined method `sign' for #<BirthdayCake:0x00007f04a130c760 @age=10, @lit=false> (NoMethodError)

    puts birthday_cake.sign
                      ^^^^^
  Did you mean?  sing  

  solution
  puts birthday_cake.sing

4th error
  Happy 10th Birdday!
  Birthday cake with 10 blown out candles
  Lighting candles...
  Birthday cake with 10 lit candles
  Singing happy birthday...
  🎶Happy birthday to you, happy birthday to you🎶
  Blowing out candles...

  birthday_cake.rb:63:in `celebrate': undefined local variable or method `birth_cake' for BirthdayCake:Class (NameError)

    birth_cake.blow_out_candles
    ^^^^^^^^^^
  Did you mean?  birthday_cake
  
  solution
  birthday_cake.blow_out_candles

5th error
 Happy 10th Birdday!
  Birthday cake with 10 blown out candles
  Lighting candles...
  Birthday cake with 10 lit candles
  Singing happy birthday...
  🎶Happy birthday to you, happy birthday to you🎶
  Blowing out candles...

  birthday_cake.rb:67:in `celebrate': undefined method `blow_out_candles' for #<BirthdayCake:0x00007f90c17bc628 @age=10, @lit=true> (NoMethodError)

    birthday_cake.blow_out_candles
  
  solution
  create method

  def blow_out_candles
    self.lit = false
  end
  
=end
