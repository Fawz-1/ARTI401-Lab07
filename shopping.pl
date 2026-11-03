
% =====================================
% Lab 7 - Lists
% Part 1: Shopping Program
% =====================================

% Start with five items
shopping :-
    menu([coffee, milk, chocolate, apple, juice]).

% Display the shopping menu
menu(List) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. Display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. Exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice, List).

% Display items using recursion
display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).

% Display all items
action(d, List) :-
    !,
    display_items(List),
    menu(List).

% Add a new item
action(a, List) :-
    !,
    write('Enter the item you want to add: '),
    read(Item),
    append(List, [Item], NewList),
    write('The item has been added.'), nl,
    menu(NewList).

% Exit the program
action(e, _) :-
    !,
    write('Goodbye!'), nl.

% Handle invalid choice
action(_, List) :-
    write('Invalid choice. Try again.'), nl,
    menu(List).

% =====================================
% Test Instructions
% =====================================
%
% ?- shopping.
%
% Enter d. to display the five items.
% Enter a. and then banana. to add an item.
% Enter d. again to verify the new item.
% Enter e. to exit.
