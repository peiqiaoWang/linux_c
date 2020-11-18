src = $(wildcard ./*.c)
obj = $(patsubst %.c, %.o, $(src))
target = app
CC = gcc

#%.o: %.c
#	$(CC) -c $< -o $@

$(target): $(obj)
	$(CC) $(obj) -o $(target) 

%.o: %.c
	$(CC) -c $< -o $@
#
.PHONY: clean
clean:
	rm -rf $(obj) $(target)
