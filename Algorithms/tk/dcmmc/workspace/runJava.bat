@ECHO OFF
cd %~dp1
ECHO Compiling %~nx1.......
IF EXIST %~dnp1.class (
DEL %~dnp1.class
)
javac -encoding UTF-8 %~f1
IF EXIST %~dnp1.class (
ECHO -----------OUTPUT-----------
REM ���ұ�д��LoadAnyClass����������class�ļ�,�����Ϳ��Խ��ԭ����javaֻ��ֱ�����в�����package���ĳ���
cd /D %~dp0
REM ��Ҳ��֪��Ϊʲô,����Ҫָ����ǰĿ¼ΪCLASSPATH,�Ų��ᱨ��IllegalAccessError
REM ����IllegalAccessError�Ǹ�ClassLoaderǰ��һ��֮����йص��쳣.
java -classpath "." LoadAnyClasses %~dnp1.class
REM cd %~dp1
REM java %~n1
)