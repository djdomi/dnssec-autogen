domains="$1"
for domain in $domains; do
        echo "mach ${domain}"
        for key in `ls $2/key/K$domain.*.key`
        do
                echo "\$include $key" >> $2"${domain}"
        done
done
