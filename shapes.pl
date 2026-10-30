% ARTI 401 - Session 10: Prolog Operators Part II
% Task 1: Calculate area and perimeter for three shapes.

% Square: Area = side^2, Perimeter = 4 * side.
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% Rectangle: Area = width * height, Perimeter = 2 * (width + height).
rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

% Triangle: Area = 1/2 * base * vertical height, Perimeter = a + b + c.
% A, B and C represent the lengths of its three sides.
triangle(Base, Height, A, B, C, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is A + B + C.
