#! /bin/bash
NAME="Emil_Olsen";
echo $NAME;
SUFFIX="_labb";
if [[ ! -e $NAME$SUFFIX ]]
then
        mkdir $NAME$SUFFIX;
fi
cp *.java $NAME$SUFFIX;
cd $NAME$SUFFIX;
pwd;
echo "Compiling .java files...";
javac *.java -cp "./";
echo "The game is starting...";
java GuessingGame;
echo "The game is over...";
echo "Removing class files..."
rm *.class;
ls;