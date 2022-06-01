echo Give id, Name, Surname and departament!
read id Name Surname Departament
echo $id, $Name, $Surname, $Departament >>students.db
touch "$id.transcripts.db"
echo Student with id $id has been registered