#include <iostream>

/* Exercise 1.2
*  Translate the following expression
*  5 + 4 + (2 - (3 - (6 + 4/5))) / 3 (6 - 2) (2 - 7)
*/
float calculate(void) {
    return 5 + 4 + (2 - (3 - (6 + 4/5))) / 3 * (6 - 2) * (2 - 7);
}

/* Exercise 1.3
*  Define a procedure that takes three numbers as arguments and returns the
*  sum of the squares of two larger numbers
*/
int sum_of_the_squares_of_the_two_largest(int a, int b, int c) {
    if (a > b && b > c || a == b) {
        return a * a + b * b;
    } else if (a < b && c > b || b == c) {
        return b * b + c * c;
    } else {
        return a * a + c * c;
    }
}


int main (void) {
    std::cout << calculate() << "\n";
    std::cout << sum_of_the_squares_of_the_two_largest(1, 2, 2) << "\n";
    std::cout << sum_of_the_squares_of_the_two_largest(2, 2, 1) << "\n";
    std::cout << sum_of_the_squares_of_the_two_largest(1, 2, 3) << "\n";
    return 0;
}