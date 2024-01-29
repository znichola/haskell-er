#!/bin/bash

part_1=$(cd part_1 && ls )
part_2=$(cd part_2 && ls )

printf "\ntest for part 1\n"
for t in $part_1; do
    pushd part_1/$t &> /dev/null
    echo testing $t
    runhaskell $t"_test.hs"
    popd &> /dev/null
done

printf "\ntest for part 2\n"
for t in $part_2; do
    pushd part_2/$t &> /dev/null
    echo testing $t
    runhaskell $t"_test.hs"
    popd &> /dev/null
done
