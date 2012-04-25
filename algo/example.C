// Author: Benjamin Mayes
// Input example for Algorithms 4005-800
// Input format: number of pairs followed by x and y pairs
// Example:
//  3
//  (0,0)
//  (1,1)
//  (2,2)
//
//How to compile: g++ -O4 -o example example.c
//How to run: ./example < input.txt

#include <iostream>

struct pt {
    int x;
    int y;
};

int main() {
    int n;
    std::cin >> n;
    int pts[n][2];
    //struct pt pts[n];
    int i;
    for(i = 0; i < n; ++i ) {
        std::cin >> pts[i][0] >> pts[i][1];
        //std::cin >> pts[i].x >> pts[i].y;
    }

    for(i = 0; i <n; ++i ) {
        std::cout << "(" << pts[i][0] << "," << pts[i][1] << ")" << std::endl;
        //std::cout << "(" << pts[i].x << "," << pts[i].y << ")" << std::endl;
    }
}
