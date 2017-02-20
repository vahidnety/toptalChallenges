//
//  main.m
//  testMac
//
//  Created by Vahid on 06/01/2017.
//  Copyright © 2017 Mimos. All rights reserved.
//

#import <Foundation/Foundation.h>


int solution1(NSMutableArray *A) {
    int n=(int)A.count;
    if (n==0) return -1;
    long long sum = 0;
    int i;
    for(i=0;i<n;i++) sum+=(long long) [A[i] intValue];
    
    long long sum_left = 0;
    for(i=0;i<n;i++) {
        long long sum_right = sum - sum_left - (long long) [A[i] intValue];
        if (sum_left == sum_right) return i;
        sum_left += (long long) [A[i] intValue];
    }
    return -1;
}

//int solution2(NSMutableArray *A) {
//    int N=(int)A.count;
//    long int unique_array[N-1];
//    //memset( unique_array, -1, N-1 );
//    long int value = 0, unique_num = 0;
//    int index = 0,counter = 0;
//    
//    for ( ; counter < N; counter++ )
//    {
//        value = [A[counter] intValue];
//        
//        if ( unique_array[value] < 0 )
//        {
//            unique_array[value] = value;
//            unique_num ++;
//        }
//    }
//    
//    for ( counter = 0; counter < N; counter++ )
//    {
//        value = [A[counter] intValue];
//        
//        if ( unique_array[value] >= 0 )
//        {
//            unique_array[value] = -1;
//            unique_num --;
//            
//            if ( unique_num == 0 )
//                index = counter;
//        }
//    }
//    
//    return index;
//    
//}
//def solution(a)
//require 'set'
//s = Set.new(a)
//z = Set.new([a.first])
//a.each_with_index do |e,i|
//s.delete(e)
//return i if s.size == 0
//end
//end

int solution2(NSMutableArray *A){
//    NSMutableArray *temp=[[NSMutableArray alloc]initWithArray:A];
    int i=0;
//    for(;i<(int)A.count;i++){
//        [temp removeObject:[A objectAtIndex:i]];
//        if (temp.count==0)
//            return i;
//    }
//    return -1;
    
//    int targetIndex=-1;
//    int i=0;
//    BOOL blArray[100000];
//    
//    for(;i<(int)A.count;i++){
//    if(==A[i])
//    
//    }
    
    return i;
}

//finding the bigest binary gap
int solution3(long int N) {
    // write your code in Objective-C 2.0
    int gap=0,rem=0,max=0;
    bool flag=0;
    do{
        rem=N%2;
        N=N/2;
        if(rem==1){
            if(max<gap)
                max=gap;
            flag=1;
            gap=0;
        }
        else if(rem==0 && flag==1)
            gap++;    
    }while(N!=0);
    return max;
}

//Rotate an array to the right by a given number of steps.
NSMutableArray * solution4(NSMutableArray *A, int K){
    NSMutableArray *aRot = [[NSMutableArray alloc] init];
    int sizeArray=(int)A.count;
    for(int i=0;i<sizeArray;i++){
        if((sizeArray-(K%sizeArray)+i)<sizeArray)
            [aRot insertObject:A[sizeArray-((K%sizeArray)-i)] atIndex:i];
        else
            [aRot insertObject:A[i-(K%sizeArray)] atIndex:i];
    }
    return aRot;
}

//Not good solution
long int solution5(NSMutableArray *A){
    long int ret;
    NSMutableArray *temp = [[NSMutableArray alloc] initWithArray:A];
    long int sizeArray=(long int)A.count;
    for(long int i=0;i<sizeArray&&(long int)temp.count>1;i++)
        [temp removeObject:[A objectAtIndex:i]];
    if((long int)temp.count==1)
        ret=[[temp objectAtIndex:0] intValue];
    else
        ret=-1;
    return ret;
}

//good solution
long int solution6(NSMutableArray *A){
    long int ret=0;
    long int sizeArray=(long int)A.count;
    for(long int i=0;i<sizeArray;i++)
        ret^=[[A objectAtIndex:i] intValue];
    return ret;
}

//FrogJmp:Count minimal number of jumps from position X to Y.
long int solution7(long int X,long int Y,long int D){
    long int ret;
    if((double)(Y-X)/D>(Y-X)/D)
        ret=(Y-X)/D+1;
    else
        ret=(Y-X)/D;
    return ret;
}

//PermMissingElem: Find the missing element in a given permutation.
long int solution8(NSMutableArray *A){
    long int sizeArray=(long int)A.count;
    if(sizeArray==0)
        return sizeArray+1;
    long int ret=sizeArray + 1;
    for(long int i=0;i<sizeArray;i++){
        ret=ret - [[A objectAtIndex:i] intValue] + i + 1;
    }
    return ret;
}

//TapeEquilibrium: Minimize the value |(A[0] + ... + A[P-1]) - (A[P] + ... + A[N-1])|.
long int solution9(NSMutableArray *A){
    int left = 0;
    int right = 0;
    int result = 1000;
    
    for (int i=0; i < [A count]; i++) {
        right += [[A objectAtIndex:i] intValue];
    }
    
    for (int i=0; i < [A count]-1; i++) {
        left += [[A objectAtIndex:i] intValue];
        right -= [[A objectAtIndex:i] intValue];
        int check = abs(left - right);
        if (check < result) { result = check; }
    }
    
    if ([A count] == 2) {
        result = abs([[A objectAtIndex:0] intValue] - [[A objectAtIndex:1] intValue]);
    }
    
    return result;
}

long int solution10(NSString *A){
    long int left=0;
    long int right=0;
    long int k=0;
    for(int i=0;i<A.length;i++){
        if([A characterAtIndex:i]==40){
        //40( //41)
            left++;
        }
        if([A characterAtIndex:(A.length-i)-1]==41){
            right++;
        }
            
    
    if(i==A.length && left>right)
        k=left;
    else
        k=right;
    }
    return k;
}
NSMutableArray * solution11(NSMutableArray *A){
    NSMutableArray *tempRes = [[NSMutableArray alloc] initWithArray:A];
    int arrInt;
    long int sum;
    int temp;

    for(int i=0;i<A.count;i++){
        arrInt=(int)[A objectAtIndex:i];
        sum+=arrInt*((-2)^(i));
        temp=~(int)[A objectAtIndex:i];
        [tempRes replaceObjectAtIndex:i withObject: [NSString stringWithFormat:@"%i",temp]];
    }
    return tempRes;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
/*
        //test1
        //NSMutableArray *testA = [[NSMutableArray alloc] initWithObjects:@(-1),@(3),@(-4),@(5),@(1),@(-6),@(2),@(1),nil];
        //long int test=solution1(testA);
        //NSLog(@"p=%ld",test);
        //
        //test2
        //NSMutableArray *testA = [[NSMutableArray alloc] initWithObjects:@(2),@(2),@(1),@(0),@(1),nil];
        //long int test=solution1(testA);
        //long int test=solution2(testA);
        //lesson1
        //int input=20;
        //int test=solution3(input);
        //NSLog(@"p=%d",test);
        //
        //lesson2A
        //NSMutableArray *input = [[NSMutableArray alloc] initWithObjects:@(1),@(2),@(3),@(4),@(5),nil];
        //NSMutableArray *outPut = [[NSMutableArray alloc] init];
        //outPut=solution4(input,7);
        //NSLog(@"outPut=%@",outPut);
        //
        //lesson2B
//        NSMutableArray *testA = [[NSMutableArray alloc] initWithObjects:@(9),@(3),@(9),@(3),@(9),@(7),@(9),nil];
//        //long int result=solution5(testA);
//        long int result=solution6(testA);
//        NSLog(@"result=%ld",result);

        //FrogJmp:Count minimal number of jumps from position X to Y.
        //lesson3A
        //long int result=solution7(10, 85, 30);
        //NSLog(@"result=%ld",result);
        
        //PermMissingElem: Find the missing element in a given permutation.
        //lesson3B
        NSMutableArray *testA = [[NSMutableArray alloc] initWithObjects:@(2),@(3),@(4),@(5),nil];
        long int result=solution8(testA);
        NSLog(@"result=%ld",result);
*/
        //TapeEquilibrium: Minimize the value |(A[0] + ... + A[P-1]) - (A[P] + ... + A[N-1])|.
        //lesson3C
//        NSMutableArray *testA = [[NSMutableArray alloc] initWithObjects:@(3),@(1),@(2),@(4),@(3),nil];
//        long int result=solution9(testA);
//        NSLog(@"result=%ld",result);
        
//        NSString *strTest=@"((()))";
//        long int result=solution10(strTest);
//        NSLog(@"result=%ld",result);
        
        NSMutableArray *testA = [[NSMutableArray alloc] initWithObjects:@(3),@(1),@(2),@(4),@(3),nil];
        //long int result=solution11(testA);
        NSLog(@"result=%@",solution11(testA));

        
    }
    return 0;
}
//This is a demo task.
//
//A zero-indexed array A consisting of N integers is given. An equilibrium index of this array is any integer P such that 0 ≤ P < N and the sum of elements of lower indices is equal to the sum of elements of higher indices, i.e.
//A[0] + A[1] + ... + A[P−1] = A[P+1] + ... + A[N−2] + A[N−1].
//Sum of zero elements is assumed to be equal to 0. This can happen if P = 0 or if P = N−1.
//
//For example, consider the following array A consisting of N = 8 elements:
//
//A[0] = -1
//A[1] =  3
//A[2] = -4
//A[3] =  5
//A[4] =  1
//A[5] = -6
//A[6] =  2
//A[7] =  1
//P = 1 is an equilibrium index of this array, because:
//
//A[0] = −1 = A[2] + A[3] + A[4] + A[5] + A[6] + A[7]
//P = 3 is an equilibrium index of this array, because:
//
//A[0] + A[1] + A[2] = −2 = A[4] + A[5] + A[6] + A[7]
//P = 7 is also an equilibrium index, because:
//
//A[0] + A[1] + A[2] + A[3] + A[4] + A[5] + A[6] = 0
//and there are no elements with indices greater than 7.
//
//P = 8 is not an equilibrium index, because it does not fulfill the condition 0 ≤ P < N.
//
//Write a function:
//
//int solution(NSMutableArray *A);
//
//that, given a zero-indexed array A consisting of N integers, returns any of its equilibrium indices. The function should return −1 if no equilibrium index exists.
//
//For example, given array A shown above, the function may return 1, 3 or 7, as explained above.
//
//Assume that:
//
//N is an integer within the range [0..100,000];
//each element of array A is an integer within the range [−2,147,483,648..2,147,483,647].
//Complexity:
//
//expected worst-case time complexity is O(N);
//expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
//Elements of input arrays can be modified.
//
//Copyright 2009–2017 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.


//We draw N discs on a plane. The discs are numbered from 0 to N − 1. A zero-indexed array A of N non-negative integers, specifying the radiuses of the discs, is given. The J-th disc is drawn with its center at (J, 0) and radius A[J].
//
//We say that the J-th disc and K-th disc intersect if J ≠ K and the J-th and K-th discs have at least one common point (assuming that the discs contain their borders).
//
//The figure below shows discs drawn for N = 6 and A as follows:
//
//A[0] = 1
//A[1] = 5
//A[2] = 2
//A[3] = 1
//A[4] = 4
//A[5] = 0
//
//
//There are eleven (unordered) pairs of discs that intersect, namely:
//
//discs 1 and 4 intersect, and both intersect with all the other discs;
//disc 2 also intersects with discs 0 and 3.
//Write a function:
//
//int solution(NSMutableArray *A);
//
//that, given an array A describing N discs as explained above, returns the number of (unordered) pairs of intersecting discs. The function should return −1 if the number of intersecting pairs exceeds 10,000,000.
//
//Given array A shown above, the function should return 11, as explained above.
//
//Assume that:
//
//N is an integer within the range [0..100,000];
//each element of array A is an integer within the range [0..2,147,483,647].
//Complexity:
//
//expected worst-case time complexity is O(N*log(N));
//expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
//Elements of input arrays can be modified.
//
//Copyright 2009–2017 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.
