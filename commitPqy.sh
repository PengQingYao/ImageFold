# 获取当前脚本执行路径
selfPath=$(cd "$(dirname "$0")"; pwd)
cd $selfPath
#写入当前时间
echo `date '+%Y年%m月%d日 %H:%M:%S 自动提交了记录'` >> $selfPath/`date +%Y%m%d`trace.txt
#开始git提交
git add -A
git commit -m 'dayCommit'
git push -u origin master:
