def deal_card
  # code #deal_card here
  #generate random number 1..11
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"

end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def end_game(total)
puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def hit?(total)
  # code hit? here
  prompt_user
  case get_user_input
  when 'h'
  total = total + deal_card
  when 's'
  total
end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
#runner calls on the #welcome method, 
  #then on the #initial_round method, 
  #then calls #hit? and #display_card_total methods
 # -until- the card sum is greater than 21,
 # then calls on the #end_game method
def runner
  # code runner here


  welcome
  total = initial_round
  until total > 21 
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
    

    #BREAK over RETURN