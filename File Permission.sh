display_perm()
{ r=`ls -l $1 | cut -c 2` w=`ls
-l $1 | cut -c 3` x=`ls -l
$1 | cut -c 4` echo "
owner permissions" if
[ "$r" = "r" ]

then
echo "READ"
else
echo "NO READ"
fi
if [ "$w" = "w" ]
then
echo " WRITE"
else
echo "NO WRITE"
fi
if [ "$x" = "x" ]
then
echo "EXECUTE"
else
echo "NO EXECUTE"
fi
//repeat this code for group permission and other permission
}
echo “enter two file names”
read file1 file2
if [ -e $file1 -a -e $file2 ]
then
p1=`ls -l $file1 | cut -c 2-10`
p2=`ls -l $file2 | cut -c 2-10`
if [ “$p1” == “$p2” ]
then
echo “Same permissions”
display_perm $file1
else
display_perm $file1
display_perm $file2
fi
else

echo “Invalid files names”
fi
exit