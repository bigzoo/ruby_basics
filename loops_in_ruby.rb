###Many names

names=[]
5.times() do
    names.push("chris")
  end
names

=> ["chris","chris","chris","chris","chris"]

###Loop's 5 times using a counter referred as time
 total = 0
   5.times() do |time|
     total = total.+(time)
   end
   total
=>  10

###More on loops
> names = ["michael", "maureen", "mukhwana", "kelly"]
  > new_names = []
  > names.each() do |name|
  *   new_names.push(name.upcase())
  *  end
  > new_names
  => ["MICHAEL", "MAUREEN", "MUKHWANA", "KELLY"]

#####
> numbers = [1, 2, 3]
  > new_numbers = []
  > numbers.each() do |number|
  *   new_number = number.+(1)
  *   new_numbers.push(new_number)
  *  end
  > new_numbers
  => [2, 3, 4]
  

###
> friends = ["Shiru", "Chepchumba", "Joe"]
  > friends.each() do |friend|
  *   friend.concat(" loves programming!")
  *  end
  > friends
  => ["Shiru loves programming!", "Chepchumba loves programming!"
, "Joe loves programming!"]


###Booleans
> 5.odd?()
  => true
  > 6.<(5)
  => false
  > "cat".eql?("dog")
  => false
  > (1..10).cover?(5)
  => true


###
> age = 25
  > if age.>=(18)
  *   "you can drink"
  * else
  *   "you can't drink"
  * end
  => "you can drink"


###
> my_number = 8
  > lucky_numbers = [7, 13]
  > if lucky_numbers.include?(my_number)
  *   "your number is lucky"
  * else
  *   "your number is not lucky"
  * end
  => "your number is not lucky"

###Absolute value method
 class Fixnum
     define_method(:abs) do
       if self.>=(0)
         self
       else
         self.*(-1)
       end
     end
   end

 > -5.abs()
 => 5
###Method to turn vowels into caps
 class String
     define_method(:capitalize_vowels) do
       vowels = ["a", "e", "i", "o", "u"]
       old_letters = self.split("") # this splits on an empty string, which splits each character
       new_letters = []
       old_letters.each() do |letter|
         if vowels.include?(letter)
           new_letter = letter.upcase()
         else
          new_letter = letter
         end
         new_letters.push(new_letter)
       end
       new_letters.join()
     end
   end
##tests
 > "ilovekittens".capitalize_vowels()
 => "IlOvEkIttEns"

###More practice
 class String
     define_method(:starts_with_vowel?) do
       vowels = ["a", "e", "i", "o", "u"]
       letters = self.split("")
       first_letter = letters.first()
       vowels.include?(first_letter)
     end
   end
##tests
> "apple".starts_with_vowel?()
=> true

###And it gets a little more complex

 age = 25
 gender = :male
 young = age.<(26)
 male = gender.eql?(:male)

   if young.&(male)
     "Your insurance is going to be so expensive!!!"
   elsif young
     "Your insurance is going to be pretty expensive."
   elsif male
     "Your insurance is going to be pretty expensive."
   else
     "Your insurance is going to be expensive, but it could be worse."
   end

  => "Your insurance is going to be so expensive!!!"


###And a little bit easier. Using the | method
 age = 25
   gender = :male

   young = age.<(26)
   male = gender.eql?(:male)

   if young.&(male)
     "Your insurance is going to be so expensive!!!"
   elsif young.|(male)#Evaluates to true if either of conditions is met
     "Your insurance is going to be pretty expensive."
   else
     "Your insurance is going to be expensive, but it could be worse."
   end

  => "Your insurance is going to be so expensive!!!"


###Using the ! method
 age = 26
   gender = :female

   young = age.<(26)
   male = gender.eql?(:male)

   if young.&(male).!()#Means 'not'. Returns the opposite of whatever boolean its called on
     "You are going to get the best insurance rates."
   end

  => "You are going to get the best insurance rates."


###The nil method
 letters = ["a", "b", "c"]
   letters.at(10)
  => nil
#nil is an object of the NilClass
