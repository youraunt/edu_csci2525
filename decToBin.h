//
// Created by BK Allen on 2/4/20.
//

#ifndef ALLENBRICEHW1_DECTOBIN_H
#define ALLENBRICEHW1_DECTOBIN_H

#include <iostream>

class decToBin {
private:
    /// @brief Can handle up to 64 bits
    int binary[64];
public:
    /// @brief Explicit constructor to avoid
    /// @brief unwanted implicit type conversions.
    /// @param userInput must be an integer otherwise will
    ///        loos precision and return only the binary head
    explicit decToBin(int userInput);
};
#endif //ALLENBRICEHW1_DECTOBIN_H
