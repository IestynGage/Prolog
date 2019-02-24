%facts
%town(theTown)
town(aber).
town(cardiff).
town(newport).
town(bangor).
town(london).

%%supermarket(supermarket)
supermarket(tesco).
supermarket(sainbury).

%supermarketAt(town,supermarket)
supermarketAt(cardiff,tesco).
supermarketAt(cardiff,sainbury).
supermarketAt(newport,tesco).
supermarketAt(bangor,tesco).
supermarketAt(london,tesco).

%rules
%noSupermarket(theTown).
noSupermarket(TheTown) :- 	town(TheTown),
    						\+ supermarketAt(TheTown,_).



