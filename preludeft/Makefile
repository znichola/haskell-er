levels = part_1
part_1 = $(shell (cd part_1 && ls ))

clean : $(levels)

$(levels) :
	cd $@ && \
	echo $($@) | xargs -n1 | \
	xargs -I{} rm {}/{} {}/{}.hi {}/{}.o \
	{}/{}_test {}/{}_test.hi {}/{}_test.o 2> /dev/null \
	|| true

.PHONY: $(levels) 
