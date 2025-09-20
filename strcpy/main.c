#include <stdio.h>

void my_strcpy(char *dst, char *src);

int main(void) {
    char dst[64];
    my_strcpy(dst, "strcpy");
    printf("dst = %s\n", dst);
}
