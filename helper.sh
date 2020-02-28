#!/bin/bash
domains="$1"


################################################################################################
################################################################################################
#  ______   ________   ______   _______         __    __  ________  _______   ________ 
# /      \ /        | /      \ /       \       /  |  /  |/        |/       \ /        |
#/$$$$$$  |$$$$$$$$/ /$$$$$$  |$$$$$$$  |      $$ |  $$ |$$$$$$$$/ $$$$$$$  |$$$$$$$$/ 
#$$ \__$$/    $$ |   $$ |  $$ |$$ |__$$ |      $$ |__$$ |$$ |__    $$ |__$$ |$$ |__    
#$$      \    $$ |   $$ |  $$ |$$    $$/       $$    $$ |$$    |   $$    $$< $$    |   
# $$$$$$  |   $$ |   $$ |  $$ |$$$$$$$/        $$$$$$$$ |$$$$$/    $$$$$$$  |$$$$$/    
#/  \__$$ |   $$ |   $$ \__$$ |$$ |            $$ |  $$ |$$ |_____ $$ |  $$ |$$ |_____ 
#$$    $$/    $$ |   $$    $$/ $$ |            $$ |  $$ |$$       |$$ |  $$ |$$       |
# $$$$$$/     $$/     $$$$$$/  $$/             $$/   $$/ $$$$$$$$/ $$/   $$/ $$$$$$$$/ 
#                                                                                    
#      Special thanks to Telegram/Github User:sausix for some helping!                                                                         
################################################################################################
################################################################################################

for domain in $domains; do
        echo "mach ${domain}"
        for key in `ls $2/key/K$domain.*.key`
        do
                echo "\$include $key" >> $2"${domain}"
        done
done
