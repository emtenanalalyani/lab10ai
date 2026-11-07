
% Task 1
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.


rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).


triangle(Base, Height, A, B, C, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is A + B + C.


% Task 2
account(admin, 1234).
account(student, 5678).
account(user1, 1111).

login :-
    login_attempts(3).

login_attempts(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'),
    nl.


login_attempts(N) :-
    N > 0,
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    ( account(Username, Password) ->
        write('Login Successful'),
        nl
    ;
        write('Login Unsuccessful'),
        nl,
        N1 is N - 1,
        login_attempts(N1)
    ).


