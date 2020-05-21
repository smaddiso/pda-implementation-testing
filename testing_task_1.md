### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card)   # incorrect case - should be checkForAce(card)
    if card.value = 1
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)  # dif should be def, missing comma between parameters
  if card1.value > card2.value   # the if else should be indented
    return card                  # should be card1
  else
    return card2
  end
end                              # indent to align with def
end                              # extra end

def self.cards_total(cards)
  total                         # should be let total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total  # missing space between of and the end quote
  end
end
```
