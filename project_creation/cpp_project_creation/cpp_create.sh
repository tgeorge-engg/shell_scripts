#! /bin/sh
echo " "
echo "Starting Project Directory Creator"
cd ~
if [[ $PWD != /Users/$USER ]]
then
    echo " "
    echo "ERROR: Couldn't access /Users/$USER; move to a directory which can or execute 'cd ~'"
    echo " "
    exit
fi

echo -n "Project Name: "
read project_name
echo -n "Project Directory (don't add the ending /): "
read project_dir

if [ ! -d "$project_dir" ] 
then
    echo " "
    echo "ERROR: The directory $project_dir cannot be accessed from /Users/$USER, or it doesn't exist" 
    echo "       Make sure to check spelling and capitalization"
    echo " "
    exit
fi

mkdir $project_dir/$project_name

mkdir $project_dir/$project_name/include

mkdir $project_dir/$project_name/lib

mkdir $project_dir/$project_name/src
mkdir $project_dir/$project_name/src/include
mkdir $project_dir/$project_name/src/modules
touch $project_dir/$project_name/src/main.cpp

touch $project_dir/$project_name/makefile

echo " "
echo "Your project directories have been created; they are located in /Users/$USER/$project_dir/$project_name"
echo " "
