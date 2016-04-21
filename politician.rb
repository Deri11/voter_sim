require "./Person.rb"


class Politician < Person
  attr_accessor :politics

@@politician_list= []
  def create
    puts "Whats the name of your Politician?"
    name= gets.chomp.capitalize
    @name = name
    puts "What is the Party affiliation of the Politician?"
    puts "(D)emocrat, (R)epublican, or (I)ndependent?"
    # change party_affiliation to politics and move method to Person

    @politics = get_politics
    @@politician_list << self
    puts "Politician created!"
  end

  def self.list
     @@politician_list.each {|politician|
      puts "Name: #{politician.name}, Affiliation: #{politician.politics}"}
  end

  def self.delete
    puts "What politician would you like to delete?"
    delete_request= gets.chomp.capitalize
    @@politician_list.delete_if{|politician| politician.name == delete_request
    }

  end

#   def self.update
#     puts "What politician would you like to update?"
#     update_request= gets.chomp.capitalize
#     p update_request
#     @@politician_list.each {|politician|
#       if politician.name == update_request
#         puts "Is this the Politician you would like to update?"
#         puts " #{politician.name}, #{politician.politics}"
#         puts " "
#         puts "(Y)es or (N)o"
#           confirm = gets.chomp.capitalize
#           if confirm == "Y"
#             then puts "Whats the name of your Politician?"
#               politician.name= gets.chomp.capitalize
#               puts "What is the Political Party of the Politician?"
#               puts "(D)emocrat, (R)epublican, or (I)ndependent?"
#
#               @politics = get_politics
#               puts "Politician updated!"
#           end
#       end
#       }
#
# end
def self.find(update_request)
  @@politician_list.each {|politician|
    if politician.name == update_request
      puts "Is this the politician you would like to update?"
      puts " #{politician.name}, #{politician.politics}"
      puts " "
      puts "(Y)es or (N)o"
        confirm = gets.chomp.capitalize
        if confirm == "Y"
            return politician
        end
    end
  }
  return nil
  puts "politician does not exist."
end


def update
  puts "Ok, let's update: Whats the updated name of your politician?"
  @name= gets.chomp.capitalize
  puts "What is the updated Political Party of the politician?"
  puts "(D)emocrat, (R)epublican, or (I)ndependent?"
  @politics = get_politics
  puts "politician updated!"
end
end
