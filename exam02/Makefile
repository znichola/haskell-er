level_0 = $(shell (cd level_0 && ls ))

clean : 
	cd level_0 && \
	echo $(level_0) | xargs -n1 | \
	xargs -I{} rm {}/{} {}/{}.hi {}/{}.o 2> /dev/null \
	|| true
