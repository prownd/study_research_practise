#!/bin/bash
 wc –l *.c *.h

#find . –iname "*.[ch]"

find . –iname "*.[ch]" | xargs wc -l


