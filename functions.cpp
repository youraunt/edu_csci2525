//
// Created by BK Allen on 2/4/20.
//

#include "functions.h"

/// @brief Function to handle user input
///        handles whether or not to play another game
/// @return user input in its capital state
int playAgain() {
    std::cout << "\nAnother Conversion? (Y/N)" << std::endl
              << "> ";
    char userInput;
    std::cin >> userInput;
    int userInputCapital = toupper(userInput);
    return userInputCapital;
}///# playAgain

/// @brief Handles unusable input
void unknownInput() {
    std::cerr << "\nError?! Unknown input.\n" << std::endl;
    sleep(1);
    exitProgram();
}///# unknownInput

/// @brief Exits program successfully with message
std::string exitProgram() {
    std::cout << "Exiting program!" << std::endl;
    /// @brief I used EXIT_SUCCESS here to unwind the stack
    exit(EXIT_SUCCESS);
}///@ exitProgram

/// @brief This functions handles user input of the integer to be converted
/// @return  integer to be converted
int toConvert() {
    int toConvert;
    std::cout << "\nPlease enter an unsigned integer" << std::endl
              << "> ";
    std::cin >> toConvert;
    return toConvert;
}///# toConvert