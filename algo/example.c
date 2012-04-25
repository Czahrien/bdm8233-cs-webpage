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

#include <stdio.h>

struct pt {
    int x;
    int y;
};

int main() {
    int n;
    scanf( "%d", &n );
    int pts[n][2];
    //struct pt pts[n];
    int i;
    for(i = 0; i < n; ++i ) {
        scanf(  "%d %d", &pts[i][0], &pts[i][1] );
        //scanf( "%d %d", &pts[i].x, &pts[i].y );
    }

    for(i = 0; i <n; ++i ) {
        printf( "(%d,%d)\n", pts[i][0], pts[i][1] );
        //printf( "(%d,%d)\n", pts[i].x, pts[i].y );
    }
}
