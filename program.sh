echo "================================================"
echo 1. Register a student
echo 2. Delete a student
echo 3. Add a grade
echo 4.Transcript
echo 5.End
echo "==============================================="
while [ 1 -eq 1 ]
do
echo Choose one of the options!
read opt

if [ $opt -eq 1 ]
then
    ./register.sh
elif [ $opt -eq 2 ]
then
     ./delete.sh
elif [ $opt -eq 3 ]
then
     ./addgrade.sh
elif [ $opt -eq 4 ]
then
     ./transcript.sh
elif [ $opt -eq 0 ]
then
    break
else
        echo Error.Not found!
fi
done