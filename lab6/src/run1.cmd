@echo off
cls
echo ========Step1 class, jar files delete============
del .\com\luxoft\*.class
del .\com\luxoft\presentation\*.class
del .\*.jar
echo ========Step2 class files compile============
javac -cp . com\luxoft\HelloWorld.java 
echo RUN from class
echo ========Step3 Run from class location============
java -cp  . com.luxoft.HelloWorld
pause
echo ========Step4 jar file compile============
jar -cf presentation.jar com\luxoft\presentation\MessagePrinter.class 
echo ========Step5 MessagePrinter.class  delete============
del .\com\luxoft\presentation\*.class
echo RUN from jar
echo ========Step6 Run from class location============
java -classpath  .;presentation.jar  com.luxoft.HelloWorld
pause