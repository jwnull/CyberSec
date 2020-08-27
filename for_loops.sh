#!/bin/bash
nums={0..9}
fav_states=("Arizona" "Alaska" "Florida" "Hawaii" "Idaho")
dir=$(ls)
# numbers for list
for num in {0..9};
do
    if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
    then
        echo $num
    fi
done
# states for list
for state in ${fav_states[@]};
do
    if [ $state = 'Hawaii' ]
    then
        echo 'Hawaii is the best!'
    else
        echo "I'm not fond of Hawaii"
    fi
done
for item in ${dir[@]};
do
	echo -e "\n" $item
done
suids=$(find / -type f -perm /4000 2>/dev/null)
for file in ${suids[@]};
do
	echo -e "\n" $file
done
