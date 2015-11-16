get '/card/:id' do # Route should be pluralized
  @card = Card.find(params[:id])

  # @deck = Deck.find_by(id: "#{@card.deck_id}")
  @deck = @card.deck

  # @round = Round.find_by(deck_id: "#{@deck.id}")
  @round = @deck.round

  erb :'cards/view_card' # Proper file name: cards/show
end

# this is not the proper CREATE route (POST == CREATE) for a card...
post '/card/:id' do
  @card = Card.find(params[:id])
  @desk = Desk.find_by(id: "#{@card.deck_id}")
  @round = Round.where(deck_id: "#{@deck.id}")

  # Use AR associations wherever possible (it's almost always possible!)
  @card_guess = Guess.find_by(card_id: params[:id], round_id: "#{@round.id}")
  @card_guess = @round.guesses.where(card: @card)

  @count = @card_guess.count
  @answer = params[:answer]

  # Have an "is_correct?(answer)" method on your model... keep the logic in there
  # for doing the comparison between the user input and the correct answer

  # It is the Card's job to fifgure out how to match against an answer.  What if
  # we want to implement Natrual language matching, allowing for missing words
  # or different order?  Your controller would blossom to enormous sizes

  # Big take-away is: Move logic to models.  Skinny Controllers/Fat Models
  if @card.answer == @answer
     @count += 1
     @card_guess.update_attributes(answer_status: true, count: @count)
     @round.round_over?
     redirect "card/#{@card.id}/correct"
  else
    @count += 1
    @card_guess.update_attributes(count: @count)
    redirect "card/#{@card.id}/incorrect"
  end
end


get '/card/:id/correct' do
  # Again, use AR association methods to find these objects!
  @card = Card.find(params[:id])
  @deck = Deck.find_by(id: "#{@card.deck_id}")
  @round = Round.where(deck_id: "#{@deck.id}")
   erb :'cards/correct'
end

get '/card/:id/incorrect' do
 @card = Card.find(params[:id])
 @deck = Deck.find_by(id: "#{@card.deck_id}")
 @round = Round.where(deck_id: "#{@deck.id}")
  erb :'cards/incorrect'
end



