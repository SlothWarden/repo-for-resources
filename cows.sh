echo "What should the cow say?"
read cow
echo "What animal should it be?(say default for just cow)"
read animal
echo "Should it be greedy?(y/n)(This will only work with some cows)"
read greed
if [ "$greed" = "y" ]
then
echo "Should it be lolcatted(rainbow)?(y/n)"
read lolly
if [ "$lolly" = "y" ]
then
cowsay -g -f $animal $cow | lolcat
else
cowsay -g -f $animal $cow
fi
else
   echo "Should it be lolcatted(rainbow)?(y/n)"
read lolly
if [ "$lolly" = "y" ]
then
cowsay -f $animal $cow | lolcat
else
cowsay -f $animal $cow
fi
fi
