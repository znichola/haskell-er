parts = part_1 part_2
part_1 = $(shell (cd part_1 && ls ))
part_2 = $(shell (cd part_2 && ls ))

clean : $(parts)

$(parts) :
	cd $@ && \
	echo $($@) | xargs -n1 | \
	xargs -I{} rm {}/{} {}/{}.hi {}/{}.o \
	{}/{}_test {}/{}_test.hi {}/{}_test.o 2> /dev/null \
	|| true

test :
	@./test.sh

.PHONY: $(parts) 
