#!/bin/bash
pkg install cowsay
cowsay -f eyes KSBhai | lolcat
toilet -f big '        sateesh' -F gay | lolcat

echo "Install All Tools Automatic For Press   :- 0"
echo "Install Tools Manually For Press        :- 1"
echo "Show And Run Installed Tools            :- 2"
echo -e "Choise  : \c"
read -r ins
function FB ()
{
    if [ -d Facebook-BruteForce ]
        then
            cd Facebook-BruteForce
        else
            git clone https://github.com/IAmBlackHacker/Facebook-BruteForce.git
            cd Facebook-BruteForce
    fi
    python3 fb.py
}
function T_Bomb ()
{
    if [ -d TBomb ]
        then
            cd TBomb
        else
            git clone https://github.com/TheSpeedX/TBomb.git
            cd TBomb
    fi
    ./TBomb.sh
}
function Show_Run ()
{
    if [ -d Facebook-BruteForce ]
        then
            echo "Facebook-BruteForce           ==> 1"
    fi
    if [ -d TBomb ]
        then
            cd TBomb
            echo "T-Bomb                        ==> 2"
    fi
    echo -e "Choise  : \c"
    read -r ins
    case "$ins" in
    "1")
        FB;;
    "2")
        T_Bomb;;
    esac
}
function auto_ins ()
{
    git clone https://github.com/IAmBlackHacker/Facebook-BruteForce.git
    git clone https://github.com/TheSpeedX/TBomb.git
    figlet SATEESH | lolcat
    echo "Select For Run "
    Show_Run
}
function tools ()
{
    echo "1. Facebook-BruteForce           ==> 1"
    echo "2. T-Bomb                        ==> 2"
    echo -e "Choise  : \c"
    read -r ins
    case "$ins" in
    "1")
        FB;;
    "2")
        T_Bomb;;
    esac
}
if (( $ins == 1 )) 
then
    tools
elif (( $ins == 0 ))
then
    auto_ins
elif (( $ins == 2 ))
then
    Show_Run
fi


