levels = level_0 level_1
level_0 = $(shell (cd level_0 && ls ))
level_1 = $(shell (cd level_1 && ls ))

clean : $(levels)

$(levels) :
	cd $@ && \
	echo $($@) | xargs -n1 | \
	xargs -I{} rm {}/{} {}/{}.hi {}/{}.o 2> /dev/null \
	|| true

.PHONY: $(levels) 
