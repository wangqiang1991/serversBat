@echo off & setlocal

:yes
ECHO ================ SERVERS ===============
ECHO -------------------------------------
ECHO 0.  �������÷���           ΢�� ������̨ ���ı��༭�� DNS �ƹ��̺�̨
ECHO 1.  ��������΢�ŷ���       �˿�8080
ECHO 2.  ����������̨����       �˿�8099
ECHO 3.  �������ı��༭������   �˿�8089
ECHO 4.  ����dns����            '192.168.20.102' = 'wxtest.goochao.com'
ECHO 5.  �����ƹ��̺�̨����     �˿�8389
ECHO 6.  ����������������       �˿�8000
ECHO 7.  ������������ͳ�Ʒ���   �˿�8499
ECHO 8.  ������Ӧ�̷����˷��� �˿�8199
ECHO 9.  �����Ա�����ͳ�Ʒ���   �˿�8299
ECHO 10.  �������ز��Է���      �˿�3000
ECHO 11.  ȫԢ�������ϵͳ      �˿�8599
ECHO 12.  ȫԢ�ճ���ά����ϵͳ  �˿�8699
ECHO ==========PRESS 'q' TO QUIT==========
ECHO.
 
set input=
set /p input=��������ѡ����Ҫ�����ķ���:
if /i '%input%'=='0' goto server0
if /i '%input%'=='1' goto server1
if /i '%input%'=='2' goto server2
if /i '%input%'=='3' goto server3
if /i '%input%'=='4' goto server4
if /i '%input%'=='5' goto server5
if /i '%input%'=='6' goto server6
if /i '%input%'=='7' goto server7
if /i '%input%'=='8' goto server8
if /i '%input%'=='9' goto server9
if /i '%input%'=='10' goto server10
if /i '%input%'=='11' goto server11
if /i '%input%'=='12' goto server12
if /i '%input%'=='q' goto end
echo wrong number, try it again&&goto :yes

:server0
echo ���÷���
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_wx&&npm run dev"
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_manager&&npm run dev"
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_editor&&gulp server"
start cmd /k "cd C:\Users\Administrator\Desktop\dns\proxy-dns-server&&npm start"
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_promoter&&npm run dev"
goto :yes

:server1
echo ��������΢�ŷ���
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_wx&&npm run dev"
goto :yes

:server2
echo ����������̨����
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_manager&&npm run dev"
goto :yes

:server3
echo �������ı��༭������
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_editor&&gulp server"
goto :yes
 
:server4
echo ����dns����
start cmd /k "cd C:\Users\Administrator\Desktop\dns\proxy-dns-server&&npm start"
goto :yes

:server5
echo �����ƹ��̺�̨����
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_promoter&&npm run dev"
goto :yes
 
:server6
echo ����������������
start cmd /k "cd C:\Users\Administrator\Desktop\goochao_website&&gulp start"
goto :yes
 
:server7
echo ������������ͳ�Ʒ���
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_dashboards&&npm run dev"
goto :yes
 
:server8
echo ������Ӧ�̷����˷���
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_business&&npm run dev"
goto :yes

:server9
echo �����Ա�����ͳ�Ʒ���
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_statistics&&npm run dev"
goto :yes
 
:server10
echo �������ز��Է���
start cmd /k "cd C:\Users\Administrator\Desktop\test&&npm start"
goto :yes
  
:server11
echo ����ȫԢ�������ϵͳ����
start cmd /k "cd C:\Users\Administrator\Desktop\quanyu-for-manager-center&&npm run dev"
goto :yes

:server12
echo ����ȫԢ�ճ���ά����ϵͳ����
start cmd /k "cd C:\Users\Administrator\Desktop\quanyu-for-manager-operation&&npm run dev"
goto :yes

goto end
:no
:end
echo close!
 
endlocal & @echo on