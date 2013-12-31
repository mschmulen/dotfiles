int multiplier = 7;
int (^myBlock)(int) = ^(int num) {
    return num * multiplier;
};
 
printf("%d", myBlock(3));
// prints "21"

