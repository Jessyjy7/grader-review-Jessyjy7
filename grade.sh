CPATH='.:grading-area/hamcrest-core-1.3.jar:grading-area/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

if [[ -e student-submission/ListExamples.java ]]
then 
    echo 'fill found'
else
    echo 'fill not found'
fi

cp TestListExamples.java grading-area
cp student-submission/ListExamples.java grading-area
cp lib/hamcrest-core-1.3.jar grading-area
cp lib/junit-4.13.2.jar grading-area

cd grading-area/
javac -cp $CPATH ListExamples.java TestListExamples.java


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
