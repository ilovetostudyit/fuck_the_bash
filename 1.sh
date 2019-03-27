#A=$(norminette)
A="Norme: ./1.sh Warning: Not a valid file Norme: ./1.sh~ Warning: Not a valid file Norme: ./kek.c~ Warning: Not a valid file Norme: ./network/1 Warning: Not a valid file Norme: ./network/10 Warning: Not a valid file Norme: ./network/11 Warning: Not a valid file Norme: ./network/12 Warning: Not a valid file Norme: ./network/13 Warning: Not a valid file Norme: ./network/14 Warning: Not a valid file Norme: ./network/15 Warning: Not a valid file Norme: ./network/2 Warning: Not a valid file Norme: ./network/3 Warning: Not a valid file Norme: ./network/4 Warning: Not a valid file Norme: ./network/5 Warning: Not a valid file Norme: ./network/6 Warning: Not a valid file Norme: ./network/7 Warning: Not a valid file Norme: ./network/8 Warning: Not a valid file Norme: ./network/9 Warning: Not a valid file Norme: ./scripts/1 Warning: Not a valid file Norme: ./scripts/2 Warning: Not a valid file Norme: ./scripts/3 Warning: Not a valid file Norme: ./system/1 Warning: Not a valid file Norme: ./system/10 Warning: Not a valid file Norme: ./system/11 Warning: Not a valid file Norme: ./system/12 Warning: Not a valid file Norme: ./system/13 Warning: Not a valid file Norme: ./system/14 Warning: Not a valid file Norme: ./system/15 Warning: Not a valid file Norme: ./system/16 Warning: Not a valid file Norme: ./system/17 Warning: Not a valid file Norme: ./system/18 Warning: Not a valid file Norme: ./system/19 Warning: Not a valid file Norme: ./system/2 Warning: Not a valid file Norme: ./system/20 Warning: Not a valid file Norme: ./system/21 Warning: Not a valid file Norme: ./system/22 Warning: Not a valid file Norme: ./system/23 Warning: Not a valid file Norme: ./system/24 Warning: Not a valid file Norme: ./system/3 Warning: Not a valid file Norme: ./system/4 Warning: Not a valid file Norme: ./system/5 Warning: Not a valid file Norme: ./system/6 Warning: Not a valid file Norme: ./system/7 Warning: Not a valid file Norme: ./system/8 Warning: Not a valid file Norme: ./system/9 Warning: Not a valid file Norme: ./kek.c Error: 42 header not at top of the file Error (line 1): bad spacing before main Error (line 1): missing void in function main Error (line 1): Space before function name Error (line 3): bad indentation Error (line 3): must begin only by tabulations Error (line 4): bad indentation Error (line 4): must begin only by tabulations Error (line 6): bad indentation Error (line 6): must begin only by tabulations Error (line 7): bad indentation Error (line 7): must begin only by tabulations Error (line 8): bad indentation Error (line 8): must begin only by tabulations Error (line 8, col 2): missing space after return"
B=0
L=${#A}
while [ $B -lt $L ]
do
    while [ "${A:B:5}" != "Error" ]
do
	B=$((B+1))
done
    C=$B
    while [ "${A:C:5}" != "Norme" ]
do
	C=$((C-1))
done
    D=$B-$C
    echo $B
    echo ${A:C:D}
    B=$((B+5))
done