cd $RUNPATH
for key in `ls K*.key`
  do
    echo "\$INCLUDE $key"
done
