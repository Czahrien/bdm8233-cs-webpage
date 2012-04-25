// Author: Benjamin Mayes
// Input example for Algorithms 4005-800
// Input format: number of pairs followed by x and y pairs
// Example:
//  3
//  (0,0)
//  (1,1)
//  (2,2)
//
//How to compile: javac Example.java 
//How to run: java Example < input.txt

import java.util.Scanner;
public class ScannerExample {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int[][] pairs = new int[n][2];
        for( int i = 0; i < n; ++i ) {
            pairs[i][0] = in.nextInt();
            pairs[i][1] = in.nextInt();
        }

        for( int i = 0; i < n; ++i ) {
            System.out.println( "(" + pairs[i][0] + "," + pairs[i][0] + ")" );
        }
    }
}
