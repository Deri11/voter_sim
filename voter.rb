require "./Person.rb"



class Voter < Person


  @@voter_list=[]

#def get_selection
#  return gets.chomp.capitalize.to_sym
#end

# asks user to enter information to create new voter.
def create
  puts "Whats the name of your voter?"
  name = gets.chomp.capitalize
  @name = name
  puts "What is the Political affiliation of the voter?"
  puts "(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral?"
  #Pselection = get_selection
  #selection= gets.chomp.capitalize.to_sym
  # change political affiliation to politics and move method to person
  #get_politics
  @politics = get_politics
  @@voter_list << self
  puts "voter created!"

end

def self.list
  @@voter_list.each {|voter|
    puts "Name: #{voter.name}, Affilitation: #{voter.politics}"}
  end


  def self.delete
    puts "What voter would you like to delete?"
    delete_request= gets.chomp.capitalize
    @@voter_list.delete_if{|voter| voter.name == delete_request
    }

  end







  def self.find(update_request)
    @@voter_list.each {|voter|
      if voter.name == update_request

        puts "Is this the voter you would like to update?"
        puts " #{voter.name}, #{voter.politics}"
        puts " "
        puts "(Y)es or (N)o"
          confirm = gets.chomp.capitalize
          if confirm == "Y"
              return voter
          end
      end
    }
    return nil
    puts "Voter does not exist."
  end


  def update
    puts "Ok, let's update: Whats the updated name of your voter?"
    @name= gets.chomp.capitalize
    puts "What is the updated Political affiliation of the voter?"
    puts "(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral?"
    @politics = get_politics
    puts "voter updated!"
  end








end
