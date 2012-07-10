#!/bin/sh

# ------------------------------------------------------
# file:     $HOME/.scripts/dzenstat.sh
# author:   Ramon Solis - http://cyb3rpunk.wordpress.com
# modified: June 2011
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=sh:
# ------------------------------------------------------

# -------------------------
# Dzen settings & Variables
# -------------------------
ICONPATH="./dzenicons"
COLOR_ICON="#6e9bcf"
CRIT_COLOR="#ff2c4a"
DZEN_FG="#333333"
DZEN_BG="#fbfbfb"
HEIGHT=12
WIDTH=470
RESOLUTIONW=`xrandr | grep -r "current" | awk '{print $8}'` 
RESOLUTIONH=`xrandr | grep -r "current" | awk '{print $10}' | tr -d ','`
X=$(($RESOLUTIONW-$WIDTH))
Y=$(($RESOLUTIONH-$HEIGHT-1))
BAR_FG="#333333"
BAR_BG="#808080"
BAR_H=10
BAR_W=60
FONT="-artwiz-anorexia-medium-r-normal--11-110-75-75-p-90-iso8859-1"
SLEEP=1
VUP="amixer -c0 -q set Master 4dB+"
VDOWN="amixer -c0 -q set Master 4dB-"
EVENT="button3=exit;button4=exec:$VUP;button5=exec:$VDOWN"
DZEN="dzen2 -x $X -y $Y -w $WIDTH -h $HEIGHT -fn $FONT -ta 'c' -bg $DZEN_BG -fg $DZEN_FG -e "button3=exit;button4=exec:$VUP;button5=exec:$VDOWN""

# -------------
# Infinite loop
# -------------
while :; do
sleep ${SLEEP}

# ---------
# Functions
# ---------
#Vol ()
#{
        #ONF=$(amixer get Master | awk '/Front\ Left:/ {print $7}' | tr -d '[]')
        #VOL=$(amixer get Master | awk '/Front\ Left:/ {print $5}' | tr -d '[]%')
                #if [[ ${ONF} == 'off' ]] ; then
                   #echo -n "^fg($CRIT_COLOR)^i($ICONPATH/spkr_01.xbm)^fg()" $(echo "0"  | gdbar -fg $BAR_FG -bg $BAR_BG -h $BAR_H -w $BAR_W -s o -ss 1 -sw 2 -nonl)
                #else
                   #echo -n "^fg($COLOR_ICON)^i($ICONPATH/spkr_01.xbm)^fg()" ${VOL} $(echo $VOL | gdbar -fg $BAR_FG -bg $BAR_BG -h $BAR_H -w $BAR_W -s o -ss 1 -sw 2 -nonl)
                #fi
    #return
#}

Vol ()
{
   VOL=$(amixer get Master | awk '/Mono:/ {print $4}' | tr -d '[]')
   echo -n "^fg($COLOR_ICON)^i($ICONPATH/spkr_01.xbm)^fg()" ${VOL} $(echo $VOL | gdbar -fg $BAR_FG -bg $BAR_BG -h $BAR_H -w $BAR_W -nonl)
   return
}

Mem ()
{
	MEM=$(free -m | grep '-' | awk '{print $3}')
	echo -n "^fg($COLOR_ICON)^i($ICONPATH/mem.xbm)^fg() ${MEM} M"
	return
}

#Temp ()
#{
	#TEMP=$(acpi -t | awk '{print $4}' | tr -d '.0')
		#if [[ ${TEMP} -gt 63 ]] ; then
			#COLOR_ICON="$CRIT_COLOR"
			#BAR_FG="$CRIT_COLOR"
		#fi
			#echo -n "^fg($COLOR_ICON)^i($ICONPATH/temp.xbm)^fg() ${TEMP}°C" $(echo ${TEMP} | gdbar -fg $BAR_FG -bg $BAR_BG -h $BAR_H -s v -sw 5 -ss 0 -sh 1 -nonl)
	#return
#}

#Disk ()
#{
	#SDA2=$(df -h / | awk '/\/$/ {print $5}' | tr -d '%')
	#SDA4=$(df -h /home | awk '/home/ {print $5}' | tr -d '%')
	#if [[ ${SDA2} -gt 60 ]] ; then
		#echo -n "^fg($COLOR_ICON)^i($ICONPATH/fs_01.xbm)^fg() /:${SDA2}% $(echo $SDA2 | gdbar -fg $CRIT_COLOR -bg $BAR_BG -h 7 -w 40 -s o -ss 0 -sw 2 -nonl)"
	#else
		#echo -n "^fg($COLOR_ICON)^i($ICONPATH/fs_01.xbm)^fg() /:${SDA2}% $(echo $SDA2 | gdbar -fg $BAR_FG -bg $BAR_BG -h 7 -w 40 -s o -ss 0 -sw 2 -nonl)"
	#fi
	#if [[ ${SDA4} -gt 80 ]] ; then
		#echo -n "  ~:${SDA4}% $(echo $SDA4 | gdbar -fg $CRIT_COLOR -bg $BAR_BG -h 7 -w 40 -s o -ss 0 -sw 2 -nonl)"
	#else
		#echo -n "  ~:${SDA4}% $(echo $SDA4 | gdbar -fg $BAR_FG -bg $BAR_BG -h 7 -w 40 -s o -ss 0 -sw 2 -nonl)"
	#fi
	#return
#}

Date ()
{
	TIME=$(date +%R)
		echo -n "^fg($COLOR_ICON)^i($ICONPATH/clock.xbm)^fg(#000000) ${TIME}"
	return
}

Between ()
{
    echo -n " ^fg(#7298a9)^r(2x2)^fg() "
	return
}

OSLogo ()
{
	OS=$(uname -a | awk '{print $2}')
	echo -n " ^fg($COLOR_ICON)^i($ICONPATH/${OS}.xbm)^fg()"
	return
}
# --------- End Of Functions

# -----
# Print 
# -----
Print () {
		OSLogo
        Between
		#Temp
        Between
        Mem
        Between
        #Disk
        Between
        Vol
        Between
        Date
        echo
    return
}

echo "$(Print)" 
done | $DZEN &
