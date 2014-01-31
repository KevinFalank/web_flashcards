User.create(user_name: 'mike_likes_bikes', password: '1234', email: 'mike@gmail.com', name: 'mike busch')
User.create(user_name: 'stoney_feet', password: 'abc', email: 'fred@quarry.com', name: 'fred flintstone')

Deck.create(name: 'English to Persian')
Deck.create(name: 'US State Capitals')

Card.create(question:'How do you say "thank you"?', answer:'Merci', deck_id: 1)
Card.create(question:'How do you say "hello"?', answer:'Salam', deck_id: 1)
Card.create(question:'How do you say "where\'s the bathroom?" (unformally)', answer:'Dashtwi kojast?', deck_id: 1)
Card.create(question:'How do you say "dog" ?', answer:'Saag', deck_id: 1)
Card.create(question:'How do you say "Ostrich"?', answer:'Shetor Morg', deck_id: 1)

Card.create(question:'What is the capital of Wisconsin?', answer:'Madison', deck_id: 2)
Card.create(question:'What is the capital of Illionois?', answer:'Springfield', deck_id: 2)
Card.create(question:'What is the capital of California?', answer:'Sacramento', deck_id: 2)
Card.create(question:'What is the capital of New York?', answer:'Albany', deck_id: 2)
Card.create(question:'What is the capital of North Carolina?', answer:'Raleigh', deck_id: 2)

Round.create(deck_id: 1, user_id: 1)
Round.create(deck_id: 2, user_id: 1)
Round.create(deck_id: 1, user_id: 2)

Guess.create(round_id:1, card_id:1, correctness:1)
Guess.create(round_id:1, card_id:2, correctness:1)
Guess.create(round_id:1, card_id:3, correctness:0)
Guess.create(round_id:1, card_id:4, correctness:0)
Guess.create(round_id:1, card_id:5, correctness:1)

Guess.create(round_id:2, card_id:6, correctness:0)
Guess.create(round_id:2, card_id:7, correctness:1)
Guess.create(round_id:2, card_id:8, correctness:1)
Guess.create(round_id:2, card_id:9, correctness:0)
Guess.create(round_id:2, card_id:10, correctness:0)

Guess.create(round_id:2, card_id:1, correctness:0)
Guess.create(round_id:2, card_id:2, correctness:0)
Guess.create(round_id:2, card_id:3, correctness:1)
Guess.create(round_id:2, card_id:4, correctness:0)
Guess.create(round_id:2, card_id:5, correctness:0)
