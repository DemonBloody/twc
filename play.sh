_play () {
#_coliseum #for test
	_all () {
		_cave
#		[[ $URL = 'furiadetitas.net' ]] && \
#		_built
	}
# /game time
	L=$(echo {0..3} | sed 's, ,\n,g' | shuf -n1)
	case $(date +%H:%M) in
# /Ancient Altars 14:00:00 - 21:00:00
		(13:59|20:59)
			if [[ $(date +%H) = 13 ]] ; then
			fi
			until [[ $(date +%M:%S) = 59:5* ]] ; do
				echo 'Ancient Altars will be started...'
				sleep 1
				[[ $(date +%M) = 00 ]] && break
			done
			SRC=$(w3m -debug -dump_source $ENC "$URL/altars/enterFight" -o user_agent="$(shuf -n1 .ua)")
			_altars
			_crono ;;
		(0[02468]:[04]$L|0[13579]:2$L|1[048]:4$L|20:[04]$L|1[13579]:2$L|2[13]:2$L|1[28]:0$L)
			_all ;
			_crono ;;
		(*)
	esac
}
