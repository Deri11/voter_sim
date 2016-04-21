  require "./voter.rb"
  require "./politician.rb"
  require "./Person.rb"


  puts "Main Menu"
  action_choice= nil

  puts "What would you like to do today?"


  while !["X"].include?(action_choice)do
    puts "(C)reate, (U)pdate, (L)ist, or (D)elete"
    action_choice = gets.chomp.capitalize

    case action_choice


    when "C"

      puts "Would you like to create a (v)oter or (p)olitician?"
      person_choice = nil

      while !["P", "V"].include?(person_choice) do
        person_choice = gets.chomp.capitalize
        if person_choice == "V"
          v= Voter.new
          v.create
        elsif person_choice == "P"
          p= Politician.new
          p.create
        else
          puts "The is not a valid response"
          puts "Please choose either (V)oter or (P)olitician."
        end

      end

    when "U"
      puts "Would you like to update a (v)oter or (p)olitician?"
      person_choice = nil

      while !["P", "V"].include?(person_choice) do
        person_choice = gets.chomp.capitalize
        if person_choice == "V"
          puts "Who would you like to update?"
            voter_to_update = Voter.find(gets.chomp.capitalize)
            voter_to_update.update
        elsif person_choice == "P"
          puts "What politician would you like to update?"
            politician_to_update = Politician.find(gets.chomp.capitalize)
            politician_to_update.update


        else
          puts "The is not a valid response"
          puts "Please choose either (V)oter or (P)olitician."
        end
      end


    when "L"
      puts " Would you like a list of (v)oters or (p)oliticians?"
      person_choice = nil

      while !["P", "V"].include?(person_choice) do
        person_choice = gets.chomp.capitalize
        if person_choice == "V"
          Voter.list
        elsif person_choice == "P"
          Politician.list
        else
          puts "The is not a valid response"
          puts "Please choose either (V)oter or (P)olitician."
        end
      end


    when "D"
      puts "Would you like to delete a (v)oter or (p)olitician?"
      person_choice = nil

      while !["P", "V"].include?(person_choice) do
        person_choice = gets.chomp.capitalize
        if person_choice == "V"
          Voter.delete
        elsif person_choice == "P"
          Politician.delete
        else
          puts "The is not a valid response"
          puts "Please choose either (V)oter or (P)olitician."
        end
      end


    else
      puts "that is not a valid entry"

    end
  end
