#!/bin/bash

RESET="\033[0m"
GERY="\033[90m"
BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
BLUE="\033[34m"
MAGENTA="\033[35m"
YELLOW="\033[33m"

BOLD="\033[1m"
ITALIC="\033[3m"

part_1=$(cd part_1 && ls )
part_2=$(cd part_2 && ls )


function exec_test()
{
    t=$1
    runhaskell $t"_test.hs" &> $t"_trace"
    if [ $? -eq 0 ]; then
        printf "${BOLD}${GREEN}OK ${BLUE}%2s${RESET} \n" "$t"
        rm $t"_trace"
    else
        printf "${BOLD}${RED}KO ${BLUE}%2s${RESET} \n" "$t"
    fi
}

printf "\n${ITALIC}${YELLOW}part 1${RESET}\n"
for t in $part_1; do
    pushd part_1/$t &> /dev/null
    exec_test $t
    popd &> /dev/null
done

printf "\n${ITALIC}${YELLOW}part 2${RESET}\n"
for t in $part_2; do
    pushd part_2/$t &> /dev/null
    exec_test $t
    popd &> /dev/null
done
