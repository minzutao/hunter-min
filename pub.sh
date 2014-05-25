#/bin/bash

cmds[0]="git pull"
cmds[1]="git commit -a -m \"`date \"+%Y%m%d %H%M%S\"`\""
cmds[2]="git push"


#for c in ${cmds[*]}
for ((i = 0; i < ${#cmds[*]}; i++))
do
    echo -e "\033[32m=== ${cmds[$i]} ========================================\033[0m"
    ${cmds[$i]} || exit 1
    echo -e "\033[34m[OK] ${cmds[$i]}\033[0m"
done
