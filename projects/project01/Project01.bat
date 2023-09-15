
@echo off
REM Create a sub-directory called "projSub"
mkdir projSub

REM Change to sub-directory "projSub"
cd projSub

REM In a SINGLE line: list contents of "C:\Windows", 
REM     sort them, and save the results in file "Sorted.txt"
REM Using "pipe/redirection" techniques, commands "DIR", "Sort" or other commands.
REM If working in Other OS, you may work on different directory which 
REM       contains more than 80 documents and subdirectories.
dir C:\Windows /ON > Sorted.txt

REM Using command "more" to skip the first 99 lines of "Sorted.txt" and display the remaining contents
more +99 Sorted.txt

REM Adding "java/javac"'s directory to PATH Env-variable with SET/PATH
set PATH=C:\Program Files\Java\jdk-16.0.2;C:\Program Files\Java\jdk-16.0.2\bin
 
REM Copy file the given "project01.java" from original directory to the current one
REM     that is, (to the directory "projSub"
copy ..\Project01.java Project01.java

REM Display your-account-user-name
echo %username%

REM Display Date (do not update date)
date /t

REM Display Time (do not update time)
time /t

REM Compile "Project01.java"
javac Project01.java

REM Run/Execute the compiled Java code with TWO integers PASSED through 
REM       THIS BAT (NOT specifying integers as the arguments for the java program!!
REM     AND also save the output from the execution results to "out2.txt" file
REM IMPORTANT all these above comands should be in a SINGLE line.
java Project01 %* > out2.txt

REM Display the contents of "out2.txt" 
type out2.txt

REM Go back to upper level directory
cd ..

REM Display current time
time /t

echo =====Finish======
