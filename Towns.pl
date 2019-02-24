%facts
%town(theTown).
town(aber).
town(cardiff).
town(newport).
town(bangor).
town(london).


%roadTo(orginTown,targetTown).
roadTo(aber,cardiff).
roadTo(cardiff,aber).
roadTo(cardiff,newport).
roadTo(newport,cardiff).
roadTo(cardiff,london).

%townreach(OrginTown,TargetTown)
% Recursive Case
townReach(OrginTown,TargetTown) :- roadTo(OrginTown,OtherTown), roadTo(OtherTown,TargetTown).
%base case
townReach(OrginTown,TargetTown) :- roadTo(OrginTown,TargetTown).


