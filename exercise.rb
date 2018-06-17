

def select_cards(possible_cards, hand)
    counter = 3
    possible_cards.each_with_index do |current_card, index|
    if (possible_cards.count - (index)) == (counter - hand.count)
      hand << current_card
      next
    end

    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp.to_s
    if answer.downcase == 'y'
      hand << current_card
    end

    break if hand.count == 3

  end

  return hand
end



#
#
available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"


    
