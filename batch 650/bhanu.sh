echo "enter your favouirt iplteam"
echo "LSG"
echo "RR"
echo "DC"
read teamName
totalMachesPlayed=10
nrr=""
won=0
lost=0
function playerTable(){
    lost=$(($2-$totalMachesPlayed))
    points=$(($2*2))
    echo "you selected $teamName"
    echo "played matches $totalMachesPlayed"
    echo "win $2 & lose $lost"
    echo "Runrate $3"
    echo "points $points"

}
function errorHandling(){
    echo "entered invalid teamname  --"
}
if [ $teamName == "LSG" ]
then
currentPosition=2
elif [ $teamName == "RR" ]
then
currentPosition=3
elif [ $teamName == "DC" ]
then
currentPosition=5
else
errorHandling
fi 
case $currentPosition in
2)
won=7
nrr="+0.397"
playerTable $currentPosition $won $nrr
;;
3)
won=6
nrr="+0.340"
playerTable $currentPosition $won $nrr
;;
5)
won=5
nrr="+0.641"
playerTable $currentPosition $won $nrr
;;
*)
echo " "
;;
esac

