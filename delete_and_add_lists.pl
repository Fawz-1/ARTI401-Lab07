
% =====================================
% Lab 7 - Lists
% Part 2: List Operations
% =====================================

% =====================================
% Task 1: Delete Every Occurrence
% =====================================

deleteElement(_, [], []).

deleteElement(X, [X|T], Result) :-
    !,
    deleteElement(X, T, Result).

deleteElement(X, [H|T], [H|Result]) :-
    deleteElement(X, T, Result).

% Task 1: Test Results
%
% ?- deleteElement(1, [1,2,1,3,1], List).
% List = [2,3].
%
% ?- deleteElement(3, [1,2,3,4], List).
% List = [1,2,4].


% =====================================
% Task 2: Add at the End
% =====================================

add_at_the_end(X, [], [X]).

add_at_the_end(X, [H|T], [H|Result]) :-
    add_at_the_end(X, T, Result).

% Task 2: Test Results
%
% ?- add_at_the_end(5, [1,2,3,4], List).
% List = [1,2,3,4,5].
%
% ?- add_at_the_end(d, [a,b,c], List).
% List = [a,b,c,d].
