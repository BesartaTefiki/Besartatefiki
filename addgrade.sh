echo enter id, course name, credits, grade
read id course credits grade
if  [[ $credits -ge 1 && $credits -le 10 && $grade -ge 5 && $grade -le 10 ]]
then
        echo $id, $course, $credits, $grade >> $id.transcripts.db
fi