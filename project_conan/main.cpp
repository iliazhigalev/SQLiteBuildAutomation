#include <iostream>
#include <fmt/core.h>

int main() {
    std::string name = "world";
    std::cout << fmt::format("Hello, {}!", name) << std::endl;
    return 0;
}
