export VAGRANT_OVERRIDES_PATH=/vagrant/overrides
find $VAGRANT_OVERRIDES_PATH -type f | 
while read file
do 
echo overriding $file
cp $file $(dirname $file | sed -e "s|$VAGRANT_OVERRIDES_PATH||g")
done

