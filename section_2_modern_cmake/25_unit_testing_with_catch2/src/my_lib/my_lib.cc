#include <iostream>
#include <cstdint>

#include "my_lib.h"

#include <nlohmann/json.hpp>

// compilation unit / library

/**
 * @brief Prints out hello world and tests the JSON
*/
void print_hello_world (){
        std::cout << "Hello World \n";
        std::cout << "JSON Lib Version:"
                << NLOHMANN_JSON_VERSION_MAJOR << "."
                << NLOHMANN_JSON_VERSION_MINOR << "."
                << NLOHMANN_JSON_VERSION_PATCH << "\n";
}


std::uint32_t factorial(unsigned int number) {
        return number <= 1 ? 1 :  factorial(number-1) * number;
}