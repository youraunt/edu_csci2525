//
// Created by BK Allen on 2/4/20.
//
#include "decToBin.h"
/// @brief This functions converts an unsigned decimal to binary
/// @param userInput
decToBin::decToBin(int userInput) {
    /// @brief counter auto lets the compiler automatically
    /// @brief deduce the type of variable based on
    /// @brief initializer
    auto counter = 0;
    /// @brief run for all positive number
    /// @brief no need to convert zero
    while (userInput > 0) {
        /// @brief declare an array to store remainders created by mod 2
        binary[counter] = userInput % 2;
        /// @brief divide the integer by two to get next iteration
        userInput = userInput / 2;
        /// @brief increment until zero  is reached
        counter++;
    }///# while
    /// @brief displays the binary number
    /// @brief must reverse to get proper msb
    for (auto i = counter - 1; i >= 0; --i) {
        std::cout << binary[i];
    }///# for
}///# decToBin

