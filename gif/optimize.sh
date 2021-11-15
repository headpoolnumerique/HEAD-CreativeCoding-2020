#/bin/bash

#optimiser un peu les gifs
#$1 > argument 1
function_optimise () {
	gifsicle --colors=64 --use-col=web --lossy=90 --dither=ordered $1 > opti/$1
}

#Boucle sur tout les gifs
for i in *.gif; do
	[ -f "$i" ] || break
	echo "Optimizing $i"
	function_optimise $i
done

