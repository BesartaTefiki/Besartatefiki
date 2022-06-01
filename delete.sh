echo Give students id
read id
if grep -q -i $id students.db;
then
        echo "Do you want to delete the student (Yes/No)"
        read answer
        if [ "$answer" = "Yes" ]
        then
                grep -i -v $id students.db > students.tmp
                rm -f students.db
                mv students.tmp students.db
                rm $id.transcripts.db
                echo Student with id $id has been deleted!
        fi
else
        echo Student not found!
fi