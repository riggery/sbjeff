%%%-------------------------------------------------------------------
%%% File    : sbjeff_cards_test.erl
%%% Author  : Brian E. Williams <mixolyde@gmail.com>
%%% Description : Tests the card utilities
%%%
%%% Created :  15 Mar 2012 by Brian E. Williams <mixolyde@gmail.com>
%%%-------------------------------------------------------------------

-module(sbjeff_cards_test).
-author("mixolyde@gmail.com").

-compile([debug_info, export_all]).

-include("../include/sbjeff.hrl").

unit_test() ->
  ?DECKSIZE =   length(sbjeff_cards:sorted_deck()),
  ?DECKSIZE = length(sbjeff_cards:shuffled_deck()),
  Card = sbjeff_cards:card_record(rec),
  Card = #card{cname=rec, display="Recreation", rank = 0, cost = -1},
  true = sbjeff_cards:is_card(Card),
  false = sbjeff_cards:is_card(card),
  PCard1 = sbjeff_cards:played_card({0, 0}, rec, "Brian", 1),
  rec = PCard1#played_card.cname,
  ok.