@echo off & setlocal

:yes
ECHO ================ SERVERS ===============
ECHO -------------------------------------
ECHO 0.  开启常用服务           微信 构巢后台 富文本编辑器 DNS 推广商后台
ECHO 1.  开启构巢微信服务       端口8080
ECHO 2.  开启构巢后台服务       端口8099
ECHO 3.  开启富文本编辑器服务   端口8089
ECHO 4.  开启dns服务            '192.168.20.102' = 'wxtest.goochao.com'
ECHO 5.  开启推广商后台服务     端口8389
ECHO 6.  开启构巢官网服务       端口8000
ECHO 7.  开启构巢数据统计服务   端口8499
ECHO 8.  开启供应商服务后端服务 端口8199
ECHO 9.  开启淘宝数据统计服务   端口8299
ECHO 10.  开启本地测试服务      端口3000
ECHO 11.  全寓中央管理系统      端口8599
ECHO 12.  全寓日常运维管理系统  端口8699
ECHO ==========PRESS 'q' TO QUIT==========
ECHO.
 
set input=
set /p input=输入数字选择需要开启的服务:
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
echo 常用服务
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_wx&&npm run dev"
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_manager&&npm run dev"
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_editor&&gulp server"
start cmd /k "cd C:\Users\Administrator\Desktop\dns\proxy-dns-server&&npm start"
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_promoter&&npm run dev"
goto :yes

:server1
echo 开启构巢微信服务
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_wx&&npm run dev"
goto :yes

:server2
echo 开启构巢后台服务
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_manager&&npm run dev"
goto :yes

:server3
echo 开启富文本编辑器服务
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_editor&&gulp server"
goto :yes
 
:server4
echo 开启dns服务
start cmd /k "cd C:\Users\Administrator\Desktop\dns\proxy-dns-server&&npm start"
goto :yes

:server5
echo 开启推广商后台服务
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_promoter&&npm run dev"
goto :yes
 
:server6
echo 开启构巢官网服务
start cmd /k "cd C:\Users\Administrator\Desktop\goochao_website&&gulp start"
goto :yes
 
:server7
echo 开启构巢数据统计服务
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_dashboards&&npm run dev"
goto :yes
 
:server8
echo 开启供应商服务后端服务
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_business&&npm run dev"
goto :yes

:server9
echo 开启淘宝数据统计服务
start cmd /k "cd C:\Users\Administrator\Desktop\gouchao_for_statistics&&npm run dev"
goto :yes
 
:server10
echo 开启本地测试服务
start cmd /k "cd C:\Users\Administrator\Desktop\test&&npm start"
goto :yes
  
:server11
echo 开启全寓中央管理系统服务
start cmd /k "cd C:\Users\Administrator\Desktop\quanyu-for-manager-center&&npm run dev"
goto :yes

:server12
echo 开启全寓日常运维管理系统服务
start cmd /k "cd C:\Users\Administrator\Desktop\quanyu-for-manager-operation&&npm run dev"
goto :yes

goto end
:no
:end
echo close!
 
endlocal & @echo on