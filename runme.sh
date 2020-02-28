RUNPATH=/var/named
cd $RUNPATH
for dom in `ls *.de`
    do
        dnssec-keygen -a NSEC3RSASHA1 -b 2048 -n ZONE -K $RUNPATH/key $dom
        ./dnssec2.sh $dom "$RUNPATH"
done
