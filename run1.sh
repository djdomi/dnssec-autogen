cd $RUNPATH
for dom in `ls *.de`
  do
    dnssec-keygen -a NSEC3RSASHA1 -b 2048 -n ZONE -K $RUNPATH  $dom
done
