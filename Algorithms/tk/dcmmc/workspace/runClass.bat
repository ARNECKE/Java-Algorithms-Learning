@ECHO OFF

IF EXIST %~f1 (
REM ���ұ�д��LoadAnyClass����������class�ļ�,�����Ϳ��Խ��ԭ����javaֻ��ֱ�����в�����package���ĳ���
REM ��Ҳ��֪��Ϊʲô,����Ҫָ����ǰĿ¼ΪCLASSPATH,�Ų��ᱨ��IllegalAccessError
REM ����IllegalAccessError�Ǹ�ClassLoaderǰ��һ��֮����йص��쳣.
cd /D %~dp0
java -classpath "." LoadAnyClasses %~f1
)