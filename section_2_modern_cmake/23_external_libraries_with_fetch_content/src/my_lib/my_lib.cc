#include <iostream>

#include "my_lib.h"

#include <nlohmann/json.hpp>

// compilation unit / library

void print_hello_world (){
        std::cout << "Hello World \n";
        std::cout << "JSON Lib Version:"
                << NLOHMANN_JSON_VERSION_MAJOR << "."
                << NLOHMANN_JSON_VERSION_MINOR << "."
                << NLOHMANN_JSON_VERSION_PATCH << "\n";
}