%option noyywrap
%option main
%{
#include <stdio.h>
%}

%%
"a"*                printf("REJECT\n");
"b"*                  printf("REJECT\n");
"ab"*                  printf("ACCEPT\n");
"aab"*                 printf("REJECT\n");
"abb"*                 printf("ACCEPT\n");
"aabb"*                printf("ACCEPT\n");
"aaabb"*               printf("REJECT\n");
"aabbb"*               printf("ACCEPT\n");
"aaaabbbb"*            printf("ACCEPT\n");
"aaaaabbbb"*           printf("REJECT\n");
"aaaabbbbb"*           printf("ACCEPT\n");
%%

