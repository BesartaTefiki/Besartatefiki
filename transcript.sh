echo Give id
read id

file="$id.transcripts.db"
echo Subjects enrolled by student $id
while read -r line
do
        echo $line
done < "$file"

awk -F"," '{x+=$3}END{print "Number of credits attempted: " x}' ./$file
awk -F"," '{if ($4 > 5) x+=$3}END{print "Number of credits awarded: " x}' ./$file
awk -F"," '{if ($4 > 5) {x+=$3*$4; y+=$3}}END{print "GPA " x/y}' ./$file