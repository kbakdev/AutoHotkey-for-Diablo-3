auto:
loop % keyList.MaxIndex() { ;loop through our array of keys
        ifWinNotActive,Diablo III   ;if window not active then toggle off
        {
                settimer,auto,off
                toggle := false
                break
        }
	if (a_tickcount > keyList[a_index][3]) { ;if enough time has passed since last press do something
		keyList[a_index][3] := a_tickcount + keyList[a_index][2] ;set next interval
		key := keyList[a_index][1]
		send {%key% down}
		sleep 50
		send {%key% up}
	}
}
return