

class Person
  attr_accessor :name,:politics




# I need a method that when letters are entered for all responses the full word is displayed.
def get_politics

 political_table= { L:"Liberal",
   C:"Conservative",
   T:"Tea Party",
   S:"Socialist",
   N:"Neutral",
   D:"Democrat",
   R:"Republican",
   I:"Independent",
}
#selection= nil
selection= gets.chomp.capitalize.to_sym
  #p @politics=
  return political_table[selection]
end
end
