###Method that returns 5 in rain and sunshine
class Fixnum
  define_method(:gimme_five) do
    5
  end
end
##tests
4.gimme_five()  =>  5
32442.gimme_five()  =>  5


###Method that does the pred function (previous whole number) atomatically
class Fixnum
  define_method(:previous) do
    self.(-1)
  end
end
##tests
3.previous()  => 2
34.previous()   =>  33
25345234.previous()   => 24345233

###String reversing method
class String
    define_method(:scramble)do
      self.reverse().upcase!()
    end
 end
##tests
"hello".scramble()    => "OLLEH"

###Gimme a 10
class Fixnum 
    define_method(:gimme_ten)do
      10
    end
  end
##tests
7.gimme_ten()   => 10
422343432432433243532432423432.gimme_ten()    =>  10


###Float half method
class Float
    define_method(:half)do
      self/2
    end
  end
##tests
float_number = 2.5
float_number.half()  =>  1.75

###Next in line method: Makes the first in an array the last
class Array
    define_method(:next_in_line) do
      val = self[0]
      self.shift()
      self.push(val)
    end
  end
##tests
arr = [1,2,3,4,5,6]
arr.next_in_line()    =>   [2,3,4,5,6,1]

###Trimmer Removes both the first and last element in array list
class Array
      define_method(:trim) do
        self.shift()
        self.pop()
        self
      end
  end
##tests
arr = [1,2,3,4,5,6]
arr.trim()  =>  [2,3,4,5]


###Defining a method with arguments

###Adding method
class Fixnum
    define_method(:add) do |number_to_add|
      self.+(number_to_add)
    end
  end
##tests
5.add(3)  => 8

###Subtract method
class Fixnum 
    define_method(:subtract) do |number_to_minus|
      self.-(number_to_minus)
    end
  end
##tests
5.subtract(2) => 3


###Combine method
class String
    define_method(:combine)do |other_string|
    self.concat(other_string)
    end
  end
##tests
"Hello ".combine("World") => "Hello World"
