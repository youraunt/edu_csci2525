/*******************************************************
*  Name        :  Brice Allen
*  Student ID  : 107452188
*  Class       : CSC 2525
*  HW#         : PA1
*  Due Date    : Feb. 5, 2020
*  File Name   : allenBriceHW1
*******************************************************/


#include <iostream>

///@brief I think using a function form the standard library makes more sense
///@brief why reinvent the wheel, right?


//void intToBin(int userInput);
//
//int main() {
//    std::cout << "Please enter an unsigned integer: " << std::endl;
//    int userInput;
//    std::cin >> userInput;
//    intToBin(userInput);
//}
//
//void intToBin(int userInput) {
//    std::string binary = std::bitset<4>(userInput).to_string();
//    std::cout << binary;
//};


#include "functions.h"
#include "decToBin.h"

/// @brief Main method compilation begins and ends here.
/// @return implied zero if all goes well.
int main() {
    /// @brief try and catch block to catch any non matching variable types
    try {
        while (true) {
            /// @brief Logical error on i/o operation
            ///        Fail() = true
            /// @param except, set to failbit, the error
            /// flag here, is a bitmask value of iostate
            std::cin.exceptions(std::istream::failbit);
            /// @brief call toConvert function to populate the integer toConvert
            int toConvert = ::toConvert();
            /// @brief call decToBin function to convert user input
            (decToBin(toConvert));
            /// @brief declare anotherRound and populate it with
            /// @brief a call to the playAgain function
            int anotherRound = playAgain();
            /// @brief if user input is anything than a capital 'Y'
            /// @brief end program
            /// @brief Play again converts lowercase letters to capital
            if (anotherRound != 'Y') exitProgram();
        }///# while
    } catch (const std::exception &) {
        unknownInput();
    }///#catch
};///# main


