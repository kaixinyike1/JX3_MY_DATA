::just another f*ck bat
@echo off
echo =================================
echo Step.1 ��ѡ���ϴ�ƽ̨
echo =================================
echo �ظ����ּ���
echo 1:Github
echo 2:�����ƣ�aliyun��
echo 3:���ƣ�gitee��
echo 4:ȫ��
set /p __platform=

::����û���ǰͨ����ҳ�޸Ĺ��������۶��Ӻܶ�
echo =================================
echo Step.2 У�Ծ�����
echo =================================
echo ���Ե�...
if %__platform% == 1 (git pull github master)
if %__platform% == 2 (git pull aliyun master)
if %__platform% == 3 (git pull gitee master)

if %__platform% == 4 (git pull github master)
if %__platform% == 4 (git pull aliyun master)
if %__platform% == 4 (git pull gitee master)
echo �� У�����
echo =================================
echo Step.3 ׼���ϴ�
echo =================================
echo ���Ե�...
git add *
git commit -a -m "update"
::δ֪�쳣�࣬ͳһǿ�ƴ���
if %__platform% == 1 (git push github master -f)
if %__platform% == 2 (git push aliyun master -f)
if %__platform% == 3 (git push gitee master -f)

if %__platform% == 4 (git push github master -f)
if %__platform% == 4 (git push aliyun master -f)
if %__platform% == 4 (git push gitee master -f)
echo �� �ϴ��ɹ�
echo =================================
echo ��������ر�
echo =================================
pause
