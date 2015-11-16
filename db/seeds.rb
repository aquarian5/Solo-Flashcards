Courtney = User.create!(name: "rocky84", password: "12345" )
Jason = User.create!(name: "jdooley", password: "12345")
Lennox = User.create!(name: "lenny", password: "12345")


riddle = Deck.create!(name: "Riddles!")

riddle_card1 = Card.create!(deck_id: "#{riddle.id}", question: "Poor people have it. Rich people need it. If you eat it you die.  What is it?", answer: " Nothing")
riddle_card2 = Card.create!(deck_id: "#{riddle.id}", question: "Mary’s father has 5 daughters – Nana, Nene, Nini, Nono. What is the fifth daughters name? ", answer: " Mary")
riddle_card3 = Card.create!(deck_id: "#{riddle.id}", question: "A dad and his son were riding their bikes and crashed. Two ambulances came and took them to different hospitals. The man’s son was in the operating room and the doctor said, I can’t operate on you. You are my son. How is that possible?  ", answer: "The doctor is his mom!")
riddle_card4 = Card.create!(deck_id: "#{riddle.id}", question: "If I drink, I die. If i eat, I am fine. What am I?  ", answer: "fire")


Alphabet =  Deck.create!(name: "Alphabet Soup")

alphabet_card1 = Card.create!(deck_id: "#{alphabet.id}", question: "What comes before B?", answer: "A")
alphabet_card2 = Card.create!(deck_id: "#{alphabet.id}", question: "What comes before F?", answer: "E")
alphabet_card3 = Card.create!(deck_id: "#{alphabet.id}", question: "What comes after M?", answer: "N")
alphabet_card4 = Card.create!(deck_id: "#{alphabet.id}", question: "What comes after Y", answer: "Z")


Animal = Deck.create!(name: "The Animal Kingdom")

animal_card1 = Card.create!(deck_id: "#{animal.id}", question: "True or False: Horses usually sleep standing up.", answer: "True")
animal_card2 = Card.create!(deck_id: "#{animal.id}", question: "What continent has the fewest species of land animals?", answer: "Antartica")
animal_card3 = Card.create!(deck_id: "#{animal.id}", question: "When water passes through the gills of fish, the fish get what?", answer: "Oxygen")
animal_card4 = Card.create!(deck_id: "#{animal.id}", question: "What is the name of the largest rodent in the world?", answer: "Capybara")


