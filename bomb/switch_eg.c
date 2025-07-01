#include <stdio.h>
long switch_rg(long x, long y, long z) {
    long w = 1;
    switch(x) {
        case 1:
            printf("nothing special...\n");
            break;
        case 2:
            break;
        case 3:
            break;
        case 5:
        case 10:
            break;
        
        default:
            w++;
    }
    return w;
}

int main() {
    return 0;
}