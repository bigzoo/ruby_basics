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
    define_method(:kumi)do
      10
    end
  end
##tests
7.kumi()   => 10
422343432432433243532432423432.kumi()    =>  10


###Float half method
class Float
    define_method(:nusu)do
      self/2
    end
  end
##tests
float_number = 

###Next in line method: Makes the last in an array the first
class Array
    define_method(:laini) do
      val = self[0]
      self.shift()
      self.push(val)
    end
  end
##tests
arr = [1,2,3,4,5,6]
arr.laini()    =>   [2,3,4,5,6,1]

###Trimmer
