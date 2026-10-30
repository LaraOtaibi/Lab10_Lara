% ARTI 401 - Session 10: Prolog Operators Part II
% Task 2: Check username and password, allowing at most three attempts.
% These example credentials are for a classroom exercise only.

credential(student, pass123).
credential(admin, admin123).

% Start the login screen with three attempts available.
login :-
    writeln('=== Login Page ==='),
    attempt_login(3).

attempt_login(Remaining) :-
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    (   credential(Username, Password)
    ->  writeln('Login Successful')
    ;   writeln('Login Unsuccessful'),
        (   Remaining > 1
        ->  Next is Remaining - 1,
            attempt_login(Next)
        ;   writeln('Sorry, you exceeded the maximum number of attempts, try again later.')
        )
    ).
