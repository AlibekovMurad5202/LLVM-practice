#include <iostream>
#include <cstdint>
#include <chrono>

int main() {
    std::int64_t num_0 = 0;
    std::int64_t num_1 = 1;
    std::int64_t num_2 = 2;
    std::int64_t num_3 = 3;
    std::int64_t num_4 = 4;
    std::int64_t num_5 = 5;
    std::int64_t num_6 = 6;
    std::int64_t num_7 = 7;
    std::int64_t num_8 = 8;
    std::int64_t num_9 = 9;

    auto time = std::chrono::duration<double>{};
    for (std::uint64_t i = 0; i < 150'000'000; i++) {
        auto const start = std::chrono::high_resolution_clock::now();
        num_0 /= 1;
        num_1 /= 1;
        num_2 /= 1;
        num_3 /= 1;
        num_4 /= 1;
        num_5 /= 1;
        num_6 /= 1;
        num_7 /= 1;
        num_8 /= 1;
        num_9 /= 1;
        auto const finish = std::chrono::high_resolution_clock::now();
        time += std::chrono::duration_cast<std::chrono::duration<double>>(finish - start);
    }

    std::cout << num_0 << ' ' << num_1 << ' ' << num_2 << ' ' << num_3 << ' ' << num_4 << ' ' << num_5 << ' ' << num_6 << ' ' << num_7 << ' ' << num_8 << ' ' << num_9 << '\n';
    std::cout << time.count() << '\n';
    return 0;
}
