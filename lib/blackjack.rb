def welcome
    puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card(x = rand(1..11))
    rand(1..11)
  # code #deal_card here
end

def display_card_total(x)
    puts "Your cards add up to #{x.to_s}"

  # code #display_card_total here
end


def prompt_user
    puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
    gets.chomp
    
  # code #get_user_input here
end

def end_game(y)
    puts "Sorry, you hit #{y.to_s}. Thanks for playing!"
    
  # code #end_game here
end

def initial_round
    card1 = deal_card
    card2 = deal_card
    total = card1 + card2
    
    display_card_total(total)
    total


    # code #initial_round here
end



def hit?(total)
    prompt_user
    input = get_user_input
        if input == "s"
            total
            elsif input == "h"
            deal_card + total
        
            
        end
    
  # code hit? here
end





def invalid_command
    puts "Please enter a valid command"
    get_user_input
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    total = initial_round
    until total > 21
        total = hit?(total)
        display_card_total(total)
        end
    end_game(total)

    
  # code runner here
end
    
