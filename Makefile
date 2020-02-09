SUBDIRS = src

.PHONY: all clean push pull

all:
	for dir in $(SUBDIRS); do $(MAKE) all -C $$dir $@; done

clean:
	rm -f -r Debug
	rm -f -r Release
	rm -f -r x64	
	for dir in $(SUBDIRS); do $(MAKE) clean -C $$dir $@; done
	
	
push: clean pull
	git add -A .
ifeq ($(MSG),)
	git commit -m"A commit without a message !"
else
	git commit -m"$(MSG)"
endif	
	git push
	
pull:
	git pull
	